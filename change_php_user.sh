#!/bin/bash
##################################################################
# Author       : Sinesio Bittencourt
# Email        : contato@sinesio.com.br
# Info         : 
# Project      : http://git.sinesio.com.br or https://github.com/sinesiobittencourt/
##################################################################
#TO-DO 
# erificar se já tem [! "AddType application/x-httpd-php53 .php"] tes de adicionar 

for USER in `ls | oi USER_OWNER | cut -d- -f1`; do echo "AddType application/x-httpd-php53 .php" >> /home/$USER/.htaccess; done
