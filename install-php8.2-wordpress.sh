#!/bin/bash
set -ex

# Ensure the script is run as root
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi

# Update package lists
apt update

# Install PHP 8.2 and extensions that are not bundled with PHP
apt install -y php8.2 php8.2-mysqli php8.2-curl php8.2-dom php8.2-exif php8.2-igbinary php8.2-imagick php8.2-intl php8.2-mbstring php8.2-xml php8.2-zip

# Install additional recommended extensions and libraries
apt install -y libcurl4-openssl-dev libxml2-dev libmagickwand-dev libicu-dev libzip-dev libmemcached-dev imagemagick ghostscript
