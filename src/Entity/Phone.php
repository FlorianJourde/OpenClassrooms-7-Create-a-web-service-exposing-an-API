<?php

namespace App\Entity;

use App\Repository\PhoneRepository;
use Doctrine\ORM\Mapping as ORM;
use JMS\Serializer\Annotation as Serializer;
use Hateoas\Configuration\Annotation as Hateoas;

/**
 * @ORM\Entity(repositoryClass=PhoneRepository::class)
 */
/* * @Hateoas\Relation (
 *      "self",
 *      href = @Hateoas\Route(
 *          "app_phone",
 *          parameters = { "id" = "expr(object.getId())" }
 *      ),
 *      exclusion = @Hateoas\Exclusion(groups="getPhones")
 * )*/
class Phone
{
    /**
     * @ORM\Id
     * @ORM\GeneratedValue
     * @ORM\Column(type="integer")
     * @Serializer\Groups({"getPhones"})
     */
    private $id;

    /**
     * @ORM\Column(type="string", length=255)
     * @Serializer\Groups({"getPhones"})
     */
    private $brand;

    /**
     * @ORM\Column(type="string", length=255)
     * @Serializer\Groups({"getPhones"})
     */
    private $model;

    /**
     * @ORM\Column(type="string", length=255, nullable=true)
     * @Serializer\Groups({"getPhones"})
     */
    private $color;

    /**
     * @ORM\Column(type="integer", nullable=true)
     * @Serializer\Groups({"getPhones"})
     */
    private $memory;

    /**
     * @ORM\Column(type="text", nullable=true)
     * @Serializer\Groups({"getPhones"})
     */
    private $description;

    /**
     * @ORM\Column(type="float")
     * @Serializer\Groups({"getPhones"})
     */
    private $price;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getBrand(): ?string
    {
        return $this->brand;
    }

    public function setBrand(string $brand): self
    {
        $this->brand = $brand;

        return $this;
    }

    public function getModel(): ?string
    {
        return $this->model;
    }

    public function setModel(string $model): self
    {
        $this->model = $model;

        return $this;
    }

    public function getColor(): ?string
    {
        return $this->color;
    }

    public function setColor(?string $color): self
    {
        $this->color = $color;

        return $this;
    }

    public function getMemory(): ?int
    {
        return $this->memory;
    }

    public function setMemory(?int $memory): self
    {
        $this->memory = $memory;

        return $this;
    }

    public function getDescription(): ?string
    {
        return $this->description;
    }

    public function setDescription(?string $description): self
    {
        $this->description = $description;

        return $this;
    }

    public function getPrice(): ?float
    {
        return $this->price;
    }

    public function setPrice(float $price): self
    {
        $this->price = $price;

        return $this;
    }
}
