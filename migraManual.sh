#!/bin/bash

CURDIR=`pwd`
HOME=`pwd |cut -d/ -f2`
PUBLIC_HTML=`pwd |cut -d/ -f4`
LOGIN=`pwd |cut -d/ -f3`

PERM_FOLD="755"
PERM_FILE="644"

echo " Iniciando transferência de arquivos..."
wget -nc -p -r --level=0 --password='xxxxx' ftp://xxxx@ftp.xxx.com/
echo " Iniciando DUMP do Banco de Dados..."
mysqldump -h 127.0.0.1 -u italocesar1_1 -p'xxxx' BANCOAQUI > ARQUIVI_BANCO.sql

echo ""
sleep 5
echo ""
echo " * Ajustando permissoes de diretorios..."
find . -type d -exec chmod $PERM_FOLD {} \;
echo " * Ajustando permissoes de arquivos..."
find . -type f -exec chmod $PERM_FILE {} \;
echo " * Ajustando proprietario dos objetos..."
chown -R $LOGIN:$LOGIN $CURDIR/*
echo ""
echo ""
echo "Operacao realizada com sucesso !"
echo ""


echo "Migração Finalizada" |mail -s "Migração Finalizada _o/" contato@sinesio.com.br
