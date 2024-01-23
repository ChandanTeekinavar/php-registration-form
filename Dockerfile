FROM php:7.4-apache

RUN apt-get update

RUN a2enmod rewrite # Enable Apache modules

RUN docker-php-ext-install mysqli # Install mysqli extension

COPY config.php /var/www/html/
COPY register.html /var/www/html/
COPY register.php /var/www/html/

RUN chown -R www-data:www-data /var/www/html # Set ownership and permissions

EXPOSE 80

ENV DB_HOST=database-1.cslawiqjy7my.ap-south-1.rds.amazonaws.com
ENV DB_USER=admin
ENV DB_PASS=admin123
ENV DB_NAME=register

CMD ["apache2-foreground"]
