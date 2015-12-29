#!/bin/bash
##################################################################
# Author       : Sinesio Bittencourt
# Email        : contato@sinesio.com.br
# Info         : 
# Project      : http://git.sinesio.com.br or https://github.com/sinesiobittencourt/
##################################################################

for USER in `ls | oi $OWNER_HERE | cut -d- -f1`; do cd /home/$USER/www/; grep "OLD_SERVER_HERE" * -R | awk -F: '{print $1}' | xargs -n1 sed -i 's/OLD_SERVER_HERE/NEW_SERVER_HERE/g' $1;  done
