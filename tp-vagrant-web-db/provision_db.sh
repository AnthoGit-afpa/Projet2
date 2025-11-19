#!/bin/bash
# Met à jour les paquets
apt-get update -y
apt-get upgrade -y

# Installer MariaDB
DEBIAN_FRONTEND=noninteractive apt-get install mariadb-server -y

# Configurer MariaDB pour écouter toutes les interfaces
sed -i "s/^bind-address.*/bind-address = 0.0.0.0/" /etc/mysql/mariadb.conf.d/50-server.cnf

# Activer et démarrer MariaDB
systemctl enable mariadb
systemctl restart mariadb

# Exécuter script SQL pour créer base et utilisateur
mysql < /vagrant/db_sql/db_init.sql

