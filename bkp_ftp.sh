#!/bin/sh
DATAA=`date +%Y-%m-%dx%H-%M`

# diretorio do backup
DIRETORIOFONTE="/vz/VPS_backup"

# diretorio aonde sera feito o backup
DIRETORIOARQBCK="/vz/VPS_backup"

# Entrando no diretorio de backup
echo "Entrando no diretorio de Backup"
cd $DIRETORIOARQBCK

# Listando Diretorio
echo "Listando diretorio"
ls -l

# fazendo o backup
echo "Fazendo Backup..."
tar -cjvf $DATAA.tar.bz2 $DIRETORIOFONTE

#Configuracao para data no arquivo de backup
DATA=`date +%Y-%m-%dx%H-%M`

echo "Entrando no diretorio de envio de arquivos"
cd $DIRETORIOARQBCK

echo "Confirmando Diretorio..."
ls -l

# compactando o arquivo para que nao fique muito grande e comer a banda da lan.
echo "Compactando arquivo..."
tar -cjvf $DATA.tar.bz2 $DATAA.tar.bz2

# espere por segundos
sleep 5

FTPSERVER="server AQUI"
USERNAME="user AQUI"
PASSWORD="senha AQUI"
LOCALDIR="/"

# conecte-se ao servidor FTP e envie o arquivo
echo "conectando no servidor FTP..."

ftp -ivn $FTPSERVER << FTP
user $USERNAME $PASSWORD
