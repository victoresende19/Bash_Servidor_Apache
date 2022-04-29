#!/bin/bash
echo
echo "Prova de conceito 01 - Victor Resende (1922120027)"
echo

#Etapa 01
echo "Etapa 01: Update dos pacotes"
apt-get -y update

#Etapa 02
echo "Etapa 02: Instalando servidor web (apache)"
apt-get install -y apache2

#Etapa 03
echo "Etapa 03: Instalando o software wget para fazer downloads via link"
apt-get install -y wget

#Etapa 04
echo "Etapa 04: Fazendo download do arquivo no link"
wget https://gist.github.com/nunomazer/873219/archive/690e1f604dc8ead2583589e1aee6f8a42040a035.zip

#Etapa 05
echo "Etapa 05: Instalando o software zip e unzip para descompactar arquivos .zip"
apt-get install -y zip
apt-get install -y unzip

#Etapa 06
echo "Etapa 06: Descompactando arquivo e copiando os arquivos descompactados cv-resumido.html e style.css"
unzip 690e1f604dc8ead2583589e1aee6f8a42040a035.zip
cd 873219-690e1f604dc8ead2583589e1aee6f8a42040a035
cp cv-resumido.html /var/www/html/
cp style.css /var/www/html/

#Etapa 07
echo "Etapa 07: Apagando o arquivo index.html"
cd /var/www/html
rm index.html

#Etapa 08
echo "Etapa 08: Renomeando o arquivo cs-resumido.html para index.html"
cd /var/www/html/
mv cv-resumido.html index.html

#Etapa 09
echo "Etapa 09: Iniciando servidor web Apache"
/etc/init.d/apache2 start

echo
echo
echo "Processo finalizado. Autor: Victor Resende."
echo

