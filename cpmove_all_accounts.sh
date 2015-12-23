# Generate all accounts cpmove in server #
# GERAR CPMOVE de todas as contas em um Dedicado ou VPS #

for S in $(cat /etc/trueuserdomains |cut -d: -f2 | awk '{print $1}');do /scripts/pkgacct --skip-limit $S ;done
