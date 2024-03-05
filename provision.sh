#!/bin/bash

apt-get update

#apt-get upgrade -y

apt install nginx php8.3-fpm -y

cp /home/vagrant/default.nginx /etc/nginx/sites-available/default

service nginx restart

service nginx status