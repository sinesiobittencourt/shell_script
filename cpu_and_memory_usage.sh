#!/bin/bash

##################################################################
# Author       : Sinesio Bittencourt
# Email        : contato@sinesio.com.br
# Info         : Script to check cPanel CPU and Memory usage for a specific user
# Project      : http://git.sinesio.com.br
##################################################################
VERSAO="0.1b"

#clear

printf "
# Author       : Sinesio Bittencourt
# Email        : contato@sinesio.com.br
# Version      : v$VERSAO ( beta )
"
echo -e "\n[!] - Bem vindo.\n"

read -p "Por favor informe o dominio a ser analisado: " DOMAIN

#domain="xxx.xx.xx";
#/usr/local/cpanel/bin/dcpumonview

for i in `seq 1 7`;
    do
      let i=$i+1 ;
      let k=$i-1 ;
      let s="$(date +%s) - (k-1)*86400";
      let t="$(date +%s) - (k-2)*86400";
      echo `date -Idate -d @$s`; /usr/local/cpanel/bin/dcpumonview `date -d @$s +%s` `date -d @$t +%s` | sed -r -e 's@^<tr bgcolor=#[[:xdigit:]]+><td>(.*)</td><td>(.*)</td><td>(.*)</td><td>(.*)</td><td>(.*)</td></tr>$@Account: \1\tDomain: \2\tCPU: \3\tMem: \4\tMySQL: \5@' -e 's@^<tr><td>Top Process</td><td>(.*)</td><td colspan=3>(.*)</td></tr>$@\1 - \2@' | grep $DOMAIN -A3 ;
done
