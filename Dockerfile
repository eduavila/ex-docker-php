###  PHP
#### 
FROM php:7.4-apache

RUN apt-get update
RUN apt-get install -y wget vim git zip
 
# Install PHP extensions needed
RUN apt-get install -y libpq-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql

# Enable common Apache modules
RUN a2enmod headers expires rewrite

COPY apache/http.conf /etc/apache2/sites-enabled/000-default.conf

# Define o diretório de trabalho
WORKDIR /var/www/html

# Copia os arquivos do projeto para o diretório de trabalho
COPY --chown=www-data:www-data . .