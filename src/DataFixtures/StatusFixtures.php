<?php

namespace App\DataFixtures;

use App\Entity\Status;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;

class StatusFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
         $list = ['Libéral installé','Libéral remplacant','Hospitalier exclusif','Mixte(Hospitalier/salarié et libéral','Salarié','Retraité','En recherche d emploi','Autre'];
    
        // $product = new Product();
        // $manager->persist($product);
        foreach($list as $val){
          $status = new Status();
          $status->setStatus($val);
          $manager->persist($status);
        }

        $manager->flush();
    }
}
