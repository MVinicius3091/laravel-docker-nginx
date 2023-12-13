#!/bin/bash

php-fpm82

chmod -R 777 /var/www/html/storage 
chmod -R 777 /var/www/html/framework/cache 

cd /var/www/html && npm install && php artisan key:generate && php artisan npm run build && php artisan migrate && composer require laravel/breeze 

nginx -g "daemon off;"
