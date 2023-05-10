<?php

namespace App\Entity;

use App\Repository\CalendrierRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: CalendrierRepository::class)]
class Calendrier
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\OneToMany(mappedBy: 'calendrier', targetEntity: HoraireTravail::class)]
    private Collection $horaire_Travail;

    public function __construct()
    {
        $this->horaire_Travail = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    /**
     * @return Collection<int, HoraireTravail>
     */
    public function getHoraireTravail(): Collection
    {
        return $this->horaire_Travail;
    }

    public function addHoraireTravail(HoraireTravail $horaireTravail): self
    {
        if (!$this->horaire_Travail->contains($horaireTravail)) {
            $this->horaire_Travail->add($horaireTravail);
            $horaireTravail->setCalendrier($this);
        }

        return $this;
    }

    public function removeHoraireTravail(HoraireTravail $horaireTravail): self
    {
        if ($this->horaire_Travail->removeElement($horaireTravail)) {
            // set the owning side to null (unless already changed)
            if ($horaireTravail->getCalendrier() === $this) {
                $horaireTravail->setCalendrier(null);
            }
        }

        return $this;
    }
    public function __toString()
    { 
         return $this->horaire_Travail;   
    }
}
