#!/bin/bash
dateFromServer=$(curl -v --insecure --silent https://google.com/ 2>&1 | grep Date | sed -e 's/< Date: //')
biji=`date +"%Y-%m-%d" -d "$dateFromServer"`
export url="https://raw.githubusercontent.com/Zeadxt/jlk/main"
###########- COLOR CODE -##############
echo -e " [INFO] Downloading Update File"
sleep 2
wget -q -O /usr/bin/menu "${url}/update/menu.sh" && chmod +x /usr/bin/menu
wget -q -O /usr/bin/menu-ss "${url}/update/menu-ss.sh" && chmod +x /usr/bin/menu-ss
wget -q -O /usr/bin/menu-vmess "${url}/update/menu-vmess.sh" && chmod +x /usr/bin/menu-vmess
wget -q -O /usr/bin/menu-vless "${url}/update/menu-vless.sh" && chmod +x /usr/bin/menu-vless
wget -q -O /usr/bin/menu-trojan "${url}/update/menu-trojan.sh" && chmod +x /usr/bin/menu-trojan
wget -q -O /usr/bin/menu-bot "${url}/update/menu-bot.sh" && chmod +x /usr/bin/menu-bot
wget -q -O /usr/bin/menu-ssh "${url}/update/menu-ssh.sh" && chmod +x /usr/bin/menu-ssh
wget -q -O /usr/bin/menu-set "${url}/menu-set.sh" && chmod +x /usr/bin/menu-set
wget -q -O /usr/bin/menu-theme "${url}/update/menu-theme.sh" && chmod +x /usr/bin/menu-theme
wget -q -O /usr/bin/menu-backup "${url}/update/menu-backup.sh" && chmod +x /usr/bin/menu-backup
wget -q -O /usr/bin/menu-ip "${url}/update/menu-ip.sh" && chmod +x /usr/bin/menu-ip
wget -q -O /usr/bin/menu-tor "${url}/update/menu-tor.sh" && chmod +x /usr/bin/menu-tor
wget -q -O /usr/bin/autoboot "${url}/update/autoboot.sh" && chmod +x /usr/bin/autoboot
wget -q -O /usr/bin/menu-tcp "${url}/update/menu-tcp.sh" && chmod +x /usr/bin/menu-tcp
wget -q -O /usr/bin/rebootvps "${url}/corn/rebootvps.sh" && chmod +x /usr/bin/rebootvps
wget -q -O /usr/bin/menu-dns "${url}/update/menu-dns.sh" && chmod +x /usr/bin/menu-dns
wget -q -O /usr/bin/info "${url}/update/info.sh" && chmod +x /usr/bin/info
wget -q -O /usr/bin/mspeed "${url}/update/menu-speedtest.sh" && chmod +x /usr/bin/mspeed
wget -q -O /usr/bin/mbandwith "${url}/update/menu-bandwith.sh" && chmod +x /usr/bin/mbandwith
echo -e " [INFO] Update Successfully"
sleep 2
exit
