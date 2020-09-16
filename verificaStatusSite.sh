for site in sinesio.com.br;do 
wget --user-agent="Mozilla/5.0" --spider -nv -o messages.txt $site;
if egrep -q '200 OK$' logStatus.txt ;then
echo -e "$site is UP";
else echo -e "$site is DOWN";
fi;
done 
