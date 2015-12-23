# Mudar o caminho da conexão
# Change the Connection
for USER in `ls | oi guiac513 | cut -d- -f1`; do cd /home/$USER/www/; grep "bm88.webservidor.net" * -R | awk -F: '{print $1}' | xargs -n1 sed -i 's/bm88.webservidor.net/127.0.0.1/g' $1;  done
