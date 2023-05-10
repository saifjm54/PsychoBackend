<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230508114728 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE calendrier (id INT AUTO_INCREMENT NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE horaire_travail (id INT AUTO_INCREMENT NOT NULL, seances_id INT DEFAULT NULL, calendrier_id INT DEFAULT NULL, jour VARCHAR(200) NOT NULL, INDEX IDX_A74025A810F09302 (seances_id), INDEX IDX_A74025A8FF52FC51 (calendrier_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE seances (id INT AUTO_INCREMENT NOT NULL, heure_debut TIME NOT NULL, heure_fin TIME NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE horaire_travail ADD CONSTRAINT FK_A74025A810F09302 FOREIGN KEY (seances_id) REFERENCES seances (id)');
        $this->addSql('ALTER TABLE horaire_travail ADD CONSTRAINT FK_A74025A8FF52FC51 FOREIGN KEY (calendrier_id) REFERENCES calendrier (id)');
        $this->addSql('ALTER TABLE praticien ADD calendrier_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE praticien ADD CONSTRAINT FK_D9A27D3FF52FC51 FOREIGN KEY (calendrier_id) REFERENCES calendrier (id)');
        $this->addSql('CREATE UNIQUE INDEX UNIQ_D9A27D3FF52FC51 ON praticien (calendrier_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE praticien DROP FOREIGN KEY FK_D9A27D3FF52FC51');
        $this->addSql('ALTER TABLE horaire_travail DROP FOREIGN KEY FK_A74025A810F09302');
        $this->addSql('ALTER TABLE horaire_travail DROP FOREIGN KEY FK_A74025A8FF52FC51');
        $this->addSql('DROP TABLE calendrier');
        $this->addSql('DROP TABLE horaire_travail');
        $this->addSql('DROP TABLE seances');
        $this->addSql('DROP INDEX UNIQ_D9A27D3FF52FC51 ON praticien');
        $this->addSql('ALTER TABLE praticien DROP calendrier_id');
    }
}
