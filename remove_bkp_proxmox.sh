#!/bin/bash

##################################################################
# Author       : Sinesio Bittencourt
# Email        : contato@sinesio.com.br
# Info         : 
# Project      : http://git.sinesio.com.br or https://github.com/sinesiobittencourt/
##################################################################

#for S in `find . -mtime +20`; do rm -r $S; done

#pegar os LOGS
#for S in $(ls /var/lib/vz/$YOUR_BACKUPS/dump/ | grep .log); do rm -rf /var/lib/vz/$YOUR_BACKUPS/dump/$S; done

# Modify in file BACKUP your SYSTEM (EX: /HOME/BKPS....) 
LISTA=ls /var/lib/vz/$YOUR_BACKUPS/dump/ | find /var/lib/vz/$YOUR_BACKUPS/dump/ -mtime +7

echo -e "\nPressione control+C para caso queira cancelar o processo... Sera deletado $LISTA \n" 

sleep 5

for S in `find /var/lib/vz/$YOUR_BACKUPS/dump/ -mtime +7`;do rm $S; done

echo -e "Deleted system file"
