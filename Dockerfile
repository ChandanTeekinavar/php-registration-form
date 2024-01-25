FROM php:7.4-apache

RUN apt-get update

RUN a2enmod rewrite # Enable Apache modules

RUN docker-php-ext-install mysqli # Install mysqli extension

COPY config.php /var/www/html/
COPY register.html /var/www/html/
COPY register.php /var/www/html/

RUN chown -R www-data:www-data /var/www/html # Set ownership and permissions

EXPOSE 80

ENV DB_HOST= <give the end point of your DataBase> 
ENV DB_USER=<Give the User name of the DataBase>
ENV DB_PASS=<Give the password of the DataBase>
ENV DB_NAME=<Give the name of the DataBase>

CMD ["apache2-foreground"]
