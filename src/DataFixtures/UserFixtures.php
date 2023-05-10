<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
class UserFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        /* $faker = Factory::create('fr-FR');
        // $product = new Product();
        // $manager->persist($product);
        for($i=0;$i<50;$i++){
            $user = new User();
            $user->setEmail($faker->email);
            $user->setPassword($faker->password);
            $user->setUsername($faker->userName);
            $user->setFirstname($faker->firstName);
            $user->setLastname($faker->name);
            $user->setIsActive(false);
            $user->setDateJoined($faker->dateTime($max = 'now',$timezone = null));
            $manager->persist($user);
        }*/

        $manager->flush();
    }
}
