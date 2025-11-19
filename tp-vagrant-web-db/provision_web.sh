#!/bin/bash
apt-get update -y
apt-get upgrade -y

# Installer Apache2, PHP et module MySQL
DEBIAN_FRONTEND=noninteractive apt-get install apache2 php php-mysql -y

# Activer et démarrer Apache
systemctl enable apache2
systemctl restart apache2
