<?php

namespace App\Repository;

use App\Entity\HoraireTravail;
use Doctrine\Bundle\DoctrineBundle\Repository\ServiceEntityRepository;
use Doctrine\Persistence\ManagerRegistry;

/**
 * @extends ServiceEntityRepository<HoraireTravail>
 *
 * @method HoraireTravail|null find($id, $lockMode = null, $lockVersion = null)
 * @method HoraireTravail|null findOneBy(array $criteria, array $orderBy = null)
 * @method HoraireTravail[]    findAll()
 * @method HoraireTravail[]    findBy(array $criteria, array $orderBy = null, $limit = null, $offset = null)
 */
class HoraireTravailRepository extends ServiceEntityRepository
{
    public function __construct(ManagerRegistry $registry)
    {
        parent::__construct($registry, HoraireTravail::class);
    }

    public function save(HoraireTravail $entity, bool $flush = false): void
    {
        $this->getEntityManager()->persist($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

    public function remove(HoraireTravail $entity, bool $flush = false): void
    {
        $this->getEntityManager()->remove($entity);

        if ($flush) {
            $this->getEntityManager()->flush();
        }
    }

//    /**
//     * @return HoraireTravail[] Returns an array of HoraireTravail objects
//     */
//    public function findByExampleField($value): array
//    {
//        return $this->createQueryBuilder('h')
//            ->andWhere('h.exampleField = :val')
//            ->setParameter('val', $value)
//            ->orderBy('h.id', 'ASC')
//            ->setMaxResults(10)
//            ->getQuery()
//            ->getResult()
//        ;
//    }

//    public function findOneBySomeField($value): ?HoraireTravail
//    {
//        return $this->createQueryBuilder('h')
//            ->andWhere('h.exampleField = :val')
//            ->setParameter('val', $value)
//            ->getQuery()
//            ->getOneOrNullResult()
//        ;
//    }
}