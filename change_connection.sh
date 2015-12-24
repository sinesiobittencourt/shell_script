#!/bin/bash

##################################################################
# Author       : Sinesio Bittencourt
# Email        : contato@sinesio.com.br
# Info         : Change the Connection
# Project      : http://git.sinesio.com.br or https://github.com/sinesiobittencourt/
##################################################################
VERSAO="0.1b"

#clear

printf "# Version      : v$VERSAO ( beta )"

echo -e "\n[!] - Bem vindo.\n"

# Mudar o caminho da conexão
for USER in `ls | oi USER_OWNER | cut -d- -f1`; do cd /home/$USER/www/; grep "CONECT_OLD_DB" * -R | awk -F: '{print $1}' | xargs -n1 sed -i 's/CONECT_OLD_DB/CONECT_NEW_DB/g' $1;  done
