<?php

namespace App\DataFixtures;

use App\Entity\Gender;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class GenderFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $list = ['male','female','Autre'];
        foreach($list as $title){
            $gender = new Gender();
            $gender->setGender($title);
            $manager->persist($gender);
        }
        // $product = new Product();
        // $manager->persist($product);

        $manager->flush();
    }
}
