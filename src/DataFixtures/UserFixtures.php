<?php

namespace App\DataFixtures;

use App\Entity\User;
use Doctrine\Bundle\FixturesBundle\Fixture;
use Doctrine\Persistence\ObjectManager;
use Symfony\Component\Security\Core\Encoder\UserPasswordEncoderInterface;

class UserFixtures extends Fixture
{
    /**
     * @var UserPasswordEncoderInterface
     */
    private $encoder;

    public function __construct(UserPasswordEncoderInterface $encoder)
    {
        $this->encoder = $encoder;
    }

    # to add a new user:
    # 1) replace username and password value
    # 2) type in terminal: php bin/console doctrine:fixtures:load --append
    public function load(ObjectManager $manager)
    {
        $user = new User();
        $user->setUsername('joaquim');
        $user->setPassword($this->encoder->encodePassword($user, 'superadmin'));
        $manager->persist($user);
        $manager->flush();
    }
}
