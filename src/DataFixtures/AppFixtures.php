<?php

namespace App\DataFixtures;

use App\Entity\Client;
use App\Entity\Phone;
use App\Entity\User;
use DateTimeImmutable;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
//use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasher;
use Symfony\Component\PasswordHasher\Hasher\UserPasswordHasherInterface;
use Symfony\Config\Security\PasswordHasherConfig;

class AppFixtures extends Fixture
{
    private $userPasswordHaser;

    public function __construct(UserPasswordHasherInterface $userPasswordHasher)
    {
        $this->userPasswordHaser = $userPasswordHasher;
    }

    public function load(ObjectManager $manager): void
    {
        $clientList = [];

        for ($i = 0; $i < 3; $i++) {
            $client = new Client();
            $client->setEmail('client' . $i . '@bilemo.com');
            $client->setRoles(['ROLE_USER']);
            $client->setPassword($this->userPasswordHaser->hashPassword($client, '123456'));
            $manager->persist($client);
            $clientList[] = $client;
        }

        for ($i = 0; $i < 10; $i++) {
            $user = new User();
            $user->setEmail('user' . $i . '@bilemo.com');
            $user->setCreationDate(new DateTimeImmutable());
            $user->setClient($clientList[array_rand($clientList)]);
            $manager->persist($user);
        }

        $brands = ['Apple', 'Samsung', 'Google', 'Xiaomi', 'Oppo'];
        $models = ['14', '7 Plus', 'S22', '13 Ultra', 'X6 Pro'];
        $colors = ['Black', 'White', 'Grey', 'Red', 'Blue', 'Yellow', 'Green'];
        $memory = [32, 64, 128, 256, 512];
        $descriptions = ['Our brand new flagship', 'This is the phone you need', 'Once you\'ve tried it, you can\'t go back', 'The best smartphone overall', 'Simply different'];
        $prices = [249.99, 499.99, 999.99, 1299.99, 149.99];

        for ($i = 0; $i < 10; $i++) {
            $phone = new Phone();
            $phone->setBrand($brands[array_rand($brands, 1)]);
            $phone->setModel($models[array_rand($models, 1)]);
            $phone->setColor($colors[array_rand($colors, 1)]);
            $phone->setMemory($memory[array_rand($memory, 1)]);
            $phone->setDescription($descriptions[array_rand($descriptions, 1)]);
            $phone->setPrice($prices[array_rand($prices, 1)]);
            $manager->persist($phone);
        }

        $manager->flush();
    }
}
