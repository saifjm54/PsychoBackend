<?php

namespace App\DataFixtures;

use App\Entity\Address;
use App\Entity\Praticien;
use App\Entity\Speciality;
use App\Entity\Status;
use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
class PraticienFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    { 
      /*  $repository = $manager->getRepository(User::class);
        $statusRepository = $manager->getRepository(Status::class);
        $specialityRepository = $manager->getRepository(Speciality::class);
        $adressRepository = $manager->getRepository(Address::class);
        $faker = Factory::create('fr-FR');
        for($i=0;$i<50;$i++){
            $praticien = new Praticien();
            $praticien->setProfile($repository->find($i+101));
            $praticien->setPhone($faker->e164PhoneNumber);
            $praticien->setStatus($statusRepository->find($i+1));
            $praticien->addSpeciality($specialityRepository->find($i+1));
            $praticien->setAdress($adressRepository->find($i+1));
            $manager->persist($praticien);
        }*/
        // $product = new Product();
        // $manager->persist($product);

        $manager->flush();
    }
}
