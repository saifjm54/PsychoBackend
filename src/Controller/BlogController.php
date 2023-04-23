<?php

namespace App\Controller;

use App\Entity\Praticien;
use App\Form\PraticienType;
use Doctrine\Persistence\ManagerRegistry;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\String\Slugger\SluggerInterface;
use Symfony\Component\HttpFoundation\File\Exception\FileException;

class BlogController extends AbstractController
{
    #[Route('/', name: 'home')]
    public function index(): Response
    {
        return $this->render('blog/index.html.twig',);
    }
    #[Route('/edit/{id?0}',name:'praticien.edit')]
    public function addPraticien(Praticien $praticien = null,ManagerRegistry $doctrine,Request $request,SluggerInterface $slugger) : Response
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
              
              return $this->redirectToRoute('home');
        }
        else{
            return $this->render('blog/addPraticien.html.twig',[
                'form' =>$form->createView()
            ]);
        }
       
    }
    
}
