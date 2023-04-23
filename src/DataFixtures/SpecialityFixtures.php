<?php

namespace App\DataFixtures;

use App\Entity\Speciality;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class SpecialityFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $list = ['Médecin Généraliste','Médecin Dermatologue','Médecin Pédiatre','Médecin Psychiatre','Médecin Gymécologue','Psychologue','je suis Patient','Autre'];
        foreach($list as $title){
            $speciality = new Speciality();
            $speciality->setTitle($title);
            $manager->persist($speciality);
        }
        // $product = new Product();
        // $manager->persist($product);

        $manager->flush();
    }
}
