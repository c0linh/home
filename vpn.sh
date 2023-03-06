#!/bin/bash

#if ! pgrep -x 'authy' &>/dev/null; then 
#  authy </dev/null &>/dev/null &
#fi

if pgrep -x 'ssh' &>/dev/null; then
  sudo killall ssh
fi
#Tunnel
ssh -fN vpn
ssh -fNT ci ; ssh -fNT co ; ssh -fNT kb

if ! pgrep 'srelay' &>/dev/null; then
  $HOME/srelay/srelay -c $HOME/srelay/srelay.conf
fi

#chromium-browser --proxy-server="socks5://localhost:1080" --host-resolver-rules="MAP * ~NOTFOUND , EXCLUDE localhost" --v=1 </dev/null &>/dev/null &

#nextcloud </dev/null &>/dev/null &
#AD Stuff
#AD_USERNAME=ra9p
#AD_PASSWORD=`secret-tool lookup domain ad.bedag.ch type password`
#OPTIONS="ip=127.0.0.1,username=$AD_USERNAME,password=$AD_PASSWORD,domain=ad.bedag.ch,uid=$USERNAME,sfu,echo_interval=2,noserverino,vers=3.0"

#Printer
#ssh coi -fNT -L localhost:8446:172.24.4.29:445
#ssh coi -fNT -L localhost:8139:172.24.4.29:139
#sudo lpadmin -p Follow-Me -v "smb://$AD_USERNAME:$AD_PASSWORD@ad.bedag.ch/localhost/Secureprint"

#Filer
#ssh coi -fNT -L 8445:a99a-dfs-root.ad.bedag.ch:445
#ssh coi -fNT -L 8446:159.144.15.41:445
#echo $OPTIONS
#sudo mount -t cifs -o $OPTIONS,port=8446 //a99a-dfs-root.ad.bedag.ch/a99a-dfs-root /mnt/t/
