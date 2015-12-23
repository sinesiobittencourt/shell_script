# Mudar o caminho da conexão
# Change the Connection
for USER in `ls | oi USER_OWNER | cut -d- -f1`; do cd /home/$USER/www/; grep "CONECT_OLD_DB" * -R | awk -F: '{print $1}' | xargs -n1 sed -i 's/CONECT_OLD_DB/CONECT_NEW_DB/g' $1;  done
