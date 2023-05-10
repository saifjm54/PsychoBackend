<?php

namespace App\Controller;

use App\Entity\Calendrier;
use App\Entity\HoraireTravail;
use App\Entity\PatientAccount;
use App\Entity\Praticien;
use App\Entity\Seances;
use App\Entity\User;
use App\Form\CalendrierType;
use App\Form\PatientAccountType;
use App\Form\PraticienType;
use App\Form\UserType;
use Doctrine\ORM\Mapping\Id;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\SluggerInterface;
use Symfony\Component\HttpFoundation\File\Exception\FileException;
use GuzzleHttp\Client;
use Symfony\Component\HttpFoundation\RedirectResponse;
use Symfony\Component\HttpFoundation\Session\Flash\FlashBag;
use Symfony\Component\Security\Core\Authentication\Token\UsernamePasswordToken;
use Symfony\Component\Serializer\Encoder\JsonEncoder;
use Symfony\Component\Serializer\Encoder\XmlEncoder;
use Symfony\Component\Serializer\Normalizer\ObjectNormalizer;
use Symfony\Component\Serializer\Serializer;
use Symfony\Component\HttpClient\HttpClient;
use Symfony\Component\VarDumper\Cloner\Data;
use Symfony\Contracts\HttpClient\Exception\TransportExceptionInterface;


class BlogController extends AbstractController
{
    #[Route('/', name: 'home')]
    public function index(): Response
    {
        return $this->render('blog/index.html.twig',);
    }
    #[Route('/praticien/profile/{id?0}',name:'praticien.profile')]
    public function showProfile(Praticien $praticien = null):Response
    {
        if(!$praticien){
            $this->addFlash('error',"you must create your account before entering");
            $this->redirectToRoute('praticien.add');
        }
        return $this->render('blog/profile.html.twig',['praticien'=>$praticien]);
    }
    #[Route('/praticien',name:'praticien.login')]
    public function loginPraticien(User $user=null,Request $request,ManagerRegistry $doctrine)
    {
        if(!$user){
            $user = new User();
        }
        $form = $this->createForm(UserType::class,$user);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid())
        {
            $repository = $doctrine->getRepository(User::class);
            $user1 = $repository->findOneBy(['username' => $user->getUsername()]);
            if(!$user1){
                $this->addFlash('error',"User Inexistant ");
                return $this->redirectToRoute('praticien.add');
            }
            if($user1->getPassword() != $user->getPassword()){
              $this->addFlash('error','Password Incorrect');
              return $this->redirectToRoute('praticien.add');
            }
            $praticien = new Praticien();
            $repositoryPrat = $doctrine->getRepository(Praticien::class);
            $praticien = $repositoryPrat->findOneBy(['profile' => $user]);
            if(!$praticien){
                $this->addFlash('error','Your account is not active, please check the active link sent to your email address');
                return $this->redirectToRoute('praticien.add');
            }
            return $this->redirectToRoute('praticien.profile',['id' => $praticien->getId()]);    
        }
        else{
            return $this->render('blog/loginPraticien.html.twig',[
                'form' =>$form->createView()
            ]);
        }

    }
    #[Route('/praticien/add',name:'praticien.add')]
    public function addPraticien(User $user=null,ManagerRegistry $doctrine,Request $request):Response
    {
        if(!$user){
            $user = new User();
            $praticien = new Praticien();
        }
        $form = $this->createForm(UserType::class,$user);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid())
        {
            $user->setIsActive(false);
            $praticien->setProfile($user);
            $manager = $doctrine->getManager();
            $manager->persist($user);
            $manager->persist($praticien);
            $manager->flush();
            $this->addFlash('succes',$praticien->getProfile()."a été ajouté avec succés");
            return $this->redirectToRoute('praticien.edit',['id'=>$praticien->getId()]);
        }
        else{
            return $this->render('blog/addUser.html.twig',[
                'form' =>$form->createView(),
                'title' =>"S'inscrire Praticien",
                'link' => 'Praticien'
            ]);
        }
    }
    #[Route('/edit/{id?0}',name:'praticien.edit')]
    public function editPraticien(Praticien $praticien = null,ManagerRegistry $doctrine,Request $request,SluggerInterface $slugger) : Response
    {
        $new = false;
        if(!$praticien){
            $praticien = new Praticien(); 
            $new = true;     
        }
        $form = $this->createForm(PraticienType::class,$praticien);
        $form->handleRequest($request);
        //Verifier si le formulaire a été soumis ou pas
        if($form->isSubmitted() && $form->isValid()){
            $image = $form->get('image')->getData();

            // this condition is needed because the 'brochure' field is not required
            // so the PDF file must be processed only when a file is uploaded
            if ($image) {
                $originalFilename = pathinfo($image->getClientOriginalName(), PATHINFO_FILENAME);
                // this is needed to safely include the file name as part of the URL
                $safeFilename = $slugger->slug($originalFilename);
                $newFilename = $safeFilename.'-'.uniqid().'.'.$image->guessExtension();

                // Move the file to the directory where brochures are stored
                try {
                    $image->move(
                        $this->getParameter('praticien_directory'),
                        $newFilename
                    );
                } catch (FileException $e) {
                    // ... handle exception if something happens during file upload
                }

                // updates the 'brochureFilename' property to store the PDF file name
                // instead of its contents
                $praticien->setImage($newFilename);
            }
              $manager = $doctrine->getManager();
              $manager->persist($praticien);
              $manager->flush();
              if($new){
                $this->addFlash('succes',$praticien->getProfile()."a été ajouté avec succés");
              }else{
                $this->addFlash('succes',$praticien->getProfile()."a été modifié avec succés");
              }
              
              return $this->redirectToRoute('praticien.profile',['id' => $praticien->getId()]);
        }
        else{
            return $this->render('blog/addPraticien.html.twig',[
                'form' =>$form->createView()
            ]);
        }
       
    }
    #[Route('patient/add',name:'patient.add')]
    public function addPatient(User $user=null,ManagerRegistry $doctrine,Request $request):Response
    {
        if(!$user){
            $user = new User();
            $patien = new PatientAccount();
        }
        $form = $this->createForm(UserType::class,$user);
        $form->handleRequest($request);
        if($form->isSubmitted() && $form->isValid())
        {
            $user->setIsActive(false);
            $patien->setUser($user);
            $patien->setAuthToken("ff");
            $manager = $doctrine->getManager();
            $manager->persist($user);
            $manager->persist($patien);
            $manager->flush();
            $this->addFlash('succes',$patien->getUser()."a été ajouté avec succés");
            return $this->redirectToRoute('patient.edit',['id'=>$patien->getId()]);
        }
        else{
            return $this->render('blog/addUser.html.twig',[
                'form' =>$form->createView(),
                'title' =>"S'inscrire Patient",
                'link' => 'Patient',
            ]);
        }
    }
    #[Route('patient/edit/{id?0}',name:'patient.edit')]
    public function editPatient(PatientAccount $patien = null,ManagerRegistry $doctrine,Request $request)
    {
        $new = false;
        if(!$patien){
            $patien = new PatientAccount(); 
            $new = true;     
        }
        $form = $this->createForm(PatientAccountType::class,$patien);
        $form->handleRequest($request);
        //Verifier si le formulaire a été soumis ou pas
        if($form->isSubmitted() && $form->isValid()){
            $client = HttpClient::create();
            $data = [
                'username' => $patien->getUser()->getUsername(),
                'email' => $patien->getUser()->getEmail(),
                'password' => $patien->getUser()->getPassword(),
                'firstname' => $patien->getFirstname(),
                'lastname' =>$patien->getLastname(),
                'telephone' => $patien->getTel(),
                // Include any other required fields
            ];
            try{
                $response = $client->request('POST', 'http://127.0.0.1:8000/auth/api/patients', [
                    'json' => $data,
                ]);
                if ($response->getStatusCode() === 201) {
                    $manager = $doctrine->getManager();
                    $manager->persist($patien);
                    $manager->flush();
                }
              if($new){
                $this->addFlash('succes',$patien->getUser()."a été ajouté avec succés");
              }else{
                $this->addFlash('succes',$patien->getUser()."a été modifié avec succés");
              }
              
              return $this->redirectToRoute('home');}
              catch(TransportExceptionInterface $e){
                return $this->redirectToRoute('home');
              }
        }else{
            return $this->render('blog/addPatient.html.twig',[
                'form' =>$form->createView()
            ]);
        }   
    }
    #[Route('/praticien/profile/{idPraticien?0}/calendrier/edit/{id?0}',name:'calendrier.edit')]
    public function editCalendrier(Calendrier $calendrier = null,ManagerRegistry $doctrine,Request $request,$idPraticien) : Response
    {
        $repository = $doctrine->getRepository(Praticien::class);
        $praticien = $repository->find($idPraticien);
        if($praticien)
        {
            $new = false;
            if(!$calendrier){
                $calendrier= new Calendrier(); 
                $new = true;     
            }
            $form = $this->createForm(CalendrierType::class,$calendrier);
            $form->handleRequest($request);
            //Verifier si le formulaire a été soumis ou pas
            if($form->isSubmitted() && $form->isValid()){
                $data = $form->get('horaire_Travail')->getData();
                $horaire_Travail = $data["jour"];
                // this condition is needed because the 'brochure' field is not required
                // so the PDF file must be processed only when a file is uploaded

                if ($horaire_Travail) {
                    // updates the 'brochureFilename' property to store the PDF file name
                    // instead of its contents
                    $calendrier->addHoraireTravail($horaire_Travail);
                }
                  $seances = $data["seances"];
                  $manager = $doctrine->getManager();
                  $manager->persist($seances);
                  $manager->flush();
                  $horaire_Travail->setSeances($seances);
                  $manager->persist($horaire_Travail);
                  $manager->flush();
                  dd($horaire_Travail);
                  $calendrier->addHoraireTravail($horaire_Travail);
                  $manager->persist($calendrier);
                  $manager->flush();
                  $praticien->setCalendrier($calendrier);
                  $manager->persist($praticien);
                  $manager->flush();
                  if($new){
                    $this->addFlash('succes',$calendrier->getId()."a été ajouté avec succés");
                  }else{
                    $this->addFlash('succes',$calendrier->getId()."a été modifié avec succés");
                  }
                  
                  return $this->redirectToRoute('praticien.profile',['id' => $praticien->getId()]);
            }
            else{
                return $this->render('blog/addCalendrier.html.twig',[
                    'form' =>$form->createView()
                ]);
            }
           
        }
        else{
            $this->addFlash('error',"Profile Inexistant!");
            return $this->redirectToRoute('home');
        }
        }
        
    
}
