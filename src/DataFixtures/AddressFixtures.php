<?php

namespace App\DataFixtures;

use App\Entity\Address;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Faker\Factory;
class AddressFixtures extends Fixture
{
    public function load(ObjectManager $manager): void
    {
        $faker = Factory::create('fr-FR');
        for($i=0;$i<100;$i++){
            $address = new Address();
            $address->setCountry($faker->country);
            $address->setCity($faker->city);
            $address->setStreet($faker->streetName);
            $address->setZipcode($faker->postcode);
            $manager->persist($address);

        }
        // $product = new Product();
        // $manager->persist($product);

        $manager->flush();
    }
}
