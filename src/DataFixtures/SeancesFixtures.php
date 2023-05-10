<?php

namespace App\DataFixtures;

use App\Entity\Seances;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
class SeancesFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $faker = Factory::create('fr-FR');
        for($i=0;$i<100;$i++){
            $seances = new Seances();
            $seances->setHeureDebut(\DateTime::createFromFormat('H:i:s',$faker->time($format = 'H:i:s')));
            $seances->setHeureFin(\DateTime::createFromFormat('H:i:s',$faker->time($format = 'H:i:s')));
            $manager->persist($seances);
        }
        // $product = new Product();
        // $manager->persist($product);

        $manager->flush();
    }
}
