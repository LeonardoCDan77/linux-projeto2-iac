#!/bin/bash

echo "Atualizando os sistema"
apt-get update
apt-get upgrade -y

echo""
echo "Instalando o apache"
apt-get install apache2 -y
apt-get install unzip -y

echo""
echo "Entrando no dir. /temporário"
cd /tmp

echo""
echo "Baixando os arquivos de "
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo""
echo "Descompactando, entrando no diretório e copiando os arquivos para o dir. padrão do apache"
unzip main.unzip
cd linux-site-dio-main
cp -R * /var/www/html/

echo""
echo"Finalizando"




