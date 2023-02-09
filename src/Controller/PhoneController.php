<?php

namespace App\Controller;

use App\Entity\Phone;
use App\Repository\PhoneRepository;
use JMS\Serializer\SerializerInterface;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Entity;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Annotation\Route;

class PhoneController extends AbstractController
{
    /**
     * @Route("/api/phones", name="app_phones", methods="GET")
     */
    public function getPhones(PhoneRepository $phoneRepository, SerializerInterface $serializer): JsonResponse
    {
        $phonesList = $phoneRepository->findAll();
        $jsonPhonesList = $serializer->serialize($phonesList, 'json');

        return new JsonResponse($jsonPhonesList, Response::HTTP_OK, [], true);
    }

    /**
     * @Route("/api/phones/{id}", name="app_phone", methods="GET")
     * @Entity("phone", expr="repository.find(id)"))
     */
    public function getPhone(Phone $phone, SerializerInterface $serializer): JsonResponse
    {
//        $context = SerializationContext::create()->setGroups(["getPhones"]);
        $jsonPhone = $serializer->serialize($phone, 'json');

        return new JsonResponse($jsonPhone, Response::HTTP_OK, [], true);
    }
}
