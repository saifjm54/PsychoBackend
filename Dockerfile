# Utilisez une image de base avec PHP et Apache
FROM php:7.4-apache

# Définir le répertoire de travail dans le conteneur
WORKDIR /var/www/html

# Copier les fichiers de l'application Symfony dans le conteneur
COPY . /var/www/html

# Installez les dépendances de l'application Symfony
RUN apt-get update && apt-get install -y \
    libicu-dev \
    libzip-dev \
    zip \
    unzip \
    && docker-php-ext-install \
    pdo_mysql \
    intl \
    zip

# Installez Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Installez les dépendances du projet avec Composer
RUN composer install --no-scripts --no-autoloader

# Générez l'autoloader de Composer
RUN composer dump-autoload --optimize

# Définir la variable d'environnement pour le mode de production
ENV APP_ENV=prod

# Exposer le port 80 pour le serveur Apache
EXPOSE 80

# Démarrez Apache pour exécuter l'application Symfony
CMD ["apache2-foreground"]