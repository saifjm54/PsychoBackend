<?php

namespace App\Entity;

use App\Repository\HoraireTravailRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: HoraireTravailRepository::class)]
class HoraireTravail
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 200)]
    private ?string $jour = null;

    #[ORM\ManyToOne]
    private ?Seances $seances = null;

    #[ORM\ManyToOne(inversedBy: 'horaire_Travail')]
    private ?Calendrier $calendrier = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getJour(): ?string
    {
        return $this->jour;
    }

    public function setJour(string $jour): self
    {
        $this->jour = $jour;

        return $this;
    }

    public function getSeances(): ?Seances
    {
        return $this->seances;
    }

    public function setSeances(?Seances $seances): self
    {
        $this->seances = $seances;

        return $this;
    }

    public function getCalendrier(): ?Calendrier
    {
        return $this->calendrier;
    }

    public function setCalendrier(?Calendrier $calendrier): self
    {
        $this->calendrier = $calendrier;

        return $this;
    }
    public function __toString()
    {
        return $this->jour;
    }
}

