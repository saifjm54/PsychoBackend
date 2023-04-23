<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20230420144154 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE address (id INT AUTO_INCREMENT NOT NULL, zipcode VARCHAR(20) DEFAULT NULL, street VARCHAR(255) DEFAULT NULL, city VARCHAR(255) DEFAULT NULL, country VARCHAR(255) DEFAULT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE praticien (id INT AUTO_INCREMENT NOT NULL, profile_id INT NOT NULL, status_id INT NOT NULL, adress_id INT DEFAULT NULL, phone VARCHAR(12) DEFAULT NULL, img LONGBLOB DEFAULT NULL, UNIQUE INDEX UNIQ_D9A27D3CCFA12B8 (profile_id), INDEX IDX_D9A27D36BF700BD (status_id), INDEX IDX_D9A27D38486F9AC (adress_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE praticien_speciality (praticien_id INT NOT NULL, speciality_id INT NOT NULL, INDEX IDX_6F1E1B942391866B (praticien_id), INDEX IDX_6F1E1B943B5A08D7 (speciality_id), PRIMARY KEY(praticien_id, speciality_id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE speciality (id INT AUTO_INCREMENT NOT NULL, title VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE status (id INT AUTO_INCREMENT NOT NULL, status VARCHAR(255) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE `user` (id INT AUTO_INCREMENT NOT NULL, email VARCHAR(180) NOT NULL, roles JSON NOT NULL, password VARCHAR(255) NOT NULL, username VARCHAR(50) NOT NULL, firstname VARCHAR(50) DEFAULT NULL, lastname VARCHAR(70) DEFAULT NULL, is_active TINYINT(1) NOT NULL, date_joined DATETIME DEFAULT NULL, UNIQUE INDEX UNIQ_8D93D649E7927C74 (email), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('CREATE TABLE messenger_messages (id BIGINT AUTO_INCREMENT NOT NULL, body LONGTEXT NOT NULL, headers LONGTEXT NOT NULL, queue_name VARCHAR(190) NOT NULL, created_at DATETIME NOT NULL, available_at DATETIME NOT NULL, delivered_at DATETIME DEFAULT NULL, INDEX IDX_75EA56E0FB7336F0 (queue_name), INDEX IDX_75EA56E0E3BD61CE (available_at), INDEX IDX_75EA56E016BA31DB (delivered_at), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE praticien ADD CONSTRAINT FK_D9A27D3CCFA12B8 FOREIGN KEY (profile_id) REFERENCES `user` (id)');
        $this->addSql('ALTER TABLE praticien ADD CONSTRAINT FK_D9A27D36BF700BD FOREIGN KEY (status_id) REFERENCES status (id)');
        $this->addSql('ALTER TABLE praticien ADD CONSTRAINT FK_D9A27D38486F9AC FOREIGN KEY (adress_id) REFERENCES address (id)');
        $this->addSql('ALTER TABLE praticien_speciality ADD CONSTRAINT FK_6F1E1B942391866B FOREIGN KEY (praticien_id) REFERENCES praticien (id) ON DELETE CASCADE');
        $this->addSql('ALTER TABLE praticien_speciality ADD CONSTRAINT FK_6F1E1B943B5A08D7 FOREIGN KEY (speciality_id) REFERENCES speciality (id) ON DELETE CASCADE');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE praticien DROP FOREIGN KEY FK_D9A27D3CCFA12B8');
        $this->addSql('ALTER TABLE praticien DROP FOREIGN KEY FK_D9A27D36BF700BD');
        $this->addSql('ALTER TABLE praticien DROP FOREIGN KEY FK_D9A27D38486F9AC');
        $this->addSql('ALTER TABLE praticien_speciality DROP FOREIGN KEY FK_6F1E1B942391866B');
        $this->addSql('ALTER TABLE praticien_speciality DROP FOREIGN KEY FK_6F1E1B943B5A08D7');
        $this->addSql('DROP TABLE address');
        $this->addSql('DROP TABLE praticien');
        $this->addSql('DROP TABLE praticien_speciality');
        $this->addSql('DROP TABLE speciality');
        $this->addSql('DROP TABLE status');
        $this->addSql('DROP TABLE `user`');
        $this->addSql('DROP TABLE messenger_messages');
    }
}
