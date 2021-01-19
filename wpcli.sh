#!/bin/bash

#Ver los comandos ejecutados
set -x

# ---------------------------------------
# Variables de configuración
# ---------------------------------------
DB_NAME=wordpress_db
DB_USER=wordpress_user
DB_PASSWORD=wordpress_password
IP_PRIVADA_FRONTEND=localhost
IP_MYSQL_SERVER=localhost
#-----------------------------------------
# Variables de configuración
# ---------------------------------------

# Actualizar los repositorios
apt update

# Descargar archivo de instalación de WP-CLI
curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

# Asignar permisos de ejecución y mover el archivo a la ruta correspondiente
chmod +x wp-cli.phar
sudo mv wp-cli.phar /usr/local/bin/wp
