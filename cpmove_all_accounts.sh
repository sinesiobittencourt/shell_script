#!/bin/bash

##################################################################
# Author       : Sinesio Bittencourt
# Email        : contato@sinesio.com.br
# Info         : Generate all accounts cpmove in server (cPanel)
# Project      : http://git.sinesio.com.br or https://github.com/sinesiobittencourt/
##################################################################

# GERAR CPMOVE de todas as contas em um Dedicado ou VPS #

for S in $(cat /etc/trueuserdomains |cut -d: -f2 | awk '{print $1}'); do /scripts/pkgacct $S ;done
