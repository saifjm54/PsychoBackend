<?php

namespace App\DataFixtures;

use App\Entity\HoraireTravail;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
class HoraireTravailFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $list = ['lundi','Mardi','Mercredi','Jeudi','Vendredi','Samedi','Dimanche'];
        foreach($list as $jour){
             $horaire_travail = new HoraireTravail();
             $horaire_travail->setJour($jour);
             $manager->persist($horaire_travail);
        }
        
        // $product = new Product();
        // $manager->persist($product);

        $manager->flush();
    }
}
