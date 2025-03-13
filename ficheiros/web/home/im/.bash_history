sudo shutdown
sudo shutdown now
sudo apt install openssh
sudo apt install open ssh
sudo apt install ssh
cd
clear
hostname
sudo vim /etc/hostname 
clear
ip a
sudo shutdown now
ip a
exit
sudo shutdown now
hostname 
sudo vi /etc/hostname 
sudo reboot now
sudo apt install nginx
sudo ufw status
sudo systemctl status nginx
sudo vi /etc/nginx/nginx.conf 
cd /var/www/
ls
ll
cd html/
ll
cd
exit
sudo apt install nginx
ip a
sudo shutdown now
cd /var/www/html/
ll
cd ..
ll
sudo mkdir im.web
cd 
cd /var/www/im.web/
sudo vi index.html
exit
cd /etc/nginx/
ll
cp sites-available/default sites-available/im.web
sudo cp sites-available/default sites-available/im.web
sudo vi sites-available/im.web 
cat sites-available/default 
sudo vi sites-available/im.web 
sudo ln -s /etc/nginx/sites-available/im.web sites-enabled/
ll sites-enabled/
cd
cd /var/www/im.web/
ll
sudo vi index.html 
sudo nginx .-t
sudo nginx -t
sudo service nginx restart
ip a
ping im.web
sudo apt install lynx
lynx im.web
cd
exit
sudo shutdown now
ls
sudo cp im.web /var/www/
sudo cp -r im.web/* /var/www/im.web/
ll /var/www/im.web/
ll
sudo rm -r  /var/www/im.web/*
sudo cp -r src/* /var/www/im.web/
sudo shutdown now
sudo ufw status
sudo shutdown now
ls
clear
c
cd /etc/nginx/
ls
ll sites-available/
cat sites-available/im.web 
rm sites-available/im.web 
sudo rm sites-available/im.web 
exi
exit
sudo shutdown now
cd /etc/nginx/
sudo vi sites-available/default 
sudo vi sites-available/im.web 
sudo nginx -t
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
sudo openssl dhparam -out /etc/ssl/certs/dhparam.pem 2048
sudo nano /etc/nginx/snippets/self-signed.conf
sudo nano /etc/nginx/snippets/ssl-params.conf
sudo vi sites-available/im.web 
sudo nginx -t
sudo vi sites-available/im.web 
ls
rm sites-enabled/im.web 
sudo rm sites-enabled/im.web 
sudo ln -s /etc/nginx/sites-available/im.web sites-enabled/im.web
sudo service nginx restart
exit
clear
sudo shutdown now
exit
sudo shutdown now
ip a
sudo vi /etc/netplan/00-installer-config.yaml 
exit
ls
ip a
sudo netplan apl
sudo netplan apply 
ip a
sudo shutdown now
ll
cd /etc/nginx/
ll
sudo vi sites-available/im.web 
sudo mv sites-available/im.web sites-available/im.pt
ll sites-enabled/
rm sites-enabled/im.web 
sudo rm sites-enabled/im.web 
sudo ls -s /etc/nginx/sites-available/im.pt sites-enabled/
sudo ln -s /etc/nginx/sites-available/im.pt sites-enabled/
sudo vi sites-available/im.pt 
cd /var/www/
ll
sudo mv im.web im.pt
ll
ll im.pt/
exit
ip a
sudo dhclient -r
exit
ip a
clear
sudo dhclient -r
sudo dhclient
ip a
sudo dhclient 
sudo dhclient
ip a
sudo dhclient
ip a
sudo dhclient -r
ip a
sudo dhclient
ip a
sudo dhclient -6
ip a
sudo dhclient -6
ip a
sudo dhclient -6
ip a
sudo dhclient --help
ip a
sudo dhclient -6
sudo dhclient
sudo dhclient -r
sudo dhclient
ip a
sudo dhclient -h
man dhclient
sudo dhclient -6
sudo dhclient -r
sudo dhclient
ip a
sudo vim /etc/netplan/00-installer-config.yaml 
sudo netplan apply
ip a
sudo dhclient
sudo dhclient -r
ip a
sudo vim /etc/netplan/00-installer-config.yaml 
sudo dhclient 
ip a
sudo dhclient -6
ip a
sudo dhclient -6
ip a
sudo dhclient

sudo dhclient
ip a
sudo dhclient -6
ip a
sudo dhclient -6
ip a
sudo reboot now
cd /etc/nginx/
ll
cp sites-available/asim.pt sites-available/webmin.asim.pt
sudo cp sites-available/asim.pt sites-available/webmin.asim.pt
ll sites-available/
sudo cp sites-available/asim.pt sites-available/webmin.asim.pt
ll sites-available/
sudo vi sites-available/webmin.asim.pt 
sudo nginx -t
sudo systemctl restart nginx
sudo ln -s /etc/nginx/sites-available/webmin.asim.pt sites-enabled/
ll sites-enabled/
sudo systemctl restart nginx
sudo systemctl stauts nginx
sudo systemctl status nginx
sudo vi sites-available/webmin.asim.pt 
sudo nginx -t
sudo systemctl restart nginx
ip
cd /etc/nginx/
ll
cp sites-available/webmin.asim.pt sites-available/webmail.asim.pt
sudo cp sites-available/webmin.asim.pt sites-available/webmail.asim.pt
sudo vi sites-available/webmail.asim.pt 
sudo ln -s /etc/nginx/sites-available/webmail.asim.pt sites-enabled/
sudo nginx -j
sudo nginx -t
sudo systemctl restart nginx
sudo vi sites-available/webmail.asim.pt 
sudo nginx -t
sudo systemctl restart nginx
sudo vi sites-available/webmail.asim.pt 
sudo systemctl restart nginx
sudo vi sites-available/webmail.asim.pt 
sudo systemctl restart nginx
sudo vi sites-available/webmail.asim.pt 
sudo systemctl restart nginx
exit
curl -o setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh
sh setup-repos.sh
sudo sh setup-repos.sh
sudo apt install webmin
exit
ip a
clear
sudo vim /etc/netplan/00-installer-config.yaml 
ip a
sudo dhclient -6
ip a
sudo dhclient -r -6
ip a
sudo dhclient -r
sudo dhclient -6
ip a
sudo dhclient
ip a
nslookup asim.pt
sudo apt update
ip a
cd /etc/nginx/
ll
sudo vim sites-available/webmail.asim.pt
sudo vi snippets/ssl-params.conf 
sudo systemctl restart nginx
cd /etc/nginx/
sudo cp sites-available/webmin.asim.pt sites-available/prometheus.asim.pt
sudo vi sites-available/prometheus.asim.pt 
sudo nginx -t
sudo systemctl restart nginx
exit
sudo apt install stress
sudo stress  --cpu 8 --timeout 30s
sudo stress  --cpu 8 --timeout 2m
sudo stress  --cpu 8 --timeout 2m'
sudo stress  --cpu 8 --timeout 2m
sudo stress  --cpu 8 --timeout 5m
sudo stress  --vm 8 --timeout 5m
sudo stress  --vm 1 --timeout 5m
sudo stress  --vm 4 --timeout 5m
sudo stress  --vm 7 --timeout 5m
sudo systemctl stop nginx
sudo systemctl start nginx
sudo systemctl stop webmin
sudo systemctl start webmin
sudo apt search node-exporter
sudo systemctl stop webmin
sudo systemctl start webmin
sudo systemctl stop webmin
sudo systemctl start webmin
sudo systemctl stop webmin
sudo systemctl start webmin
sudo systemctl restart nginx
cd /etc/nginx/
ll
ll sites-enabled/
htop
sudo ln -s sites-available/prometheus.asim.pt /etc/nginx/sites-enabled/
sudo systemctl restart nginx
sudo systemctl status nginx
ll sites-enabled/
rm sites-enabled/prometheus.asim.pt 
sudo rm sites-enabled/prometheus.asim.pt 
sudo ln -s /etc/nginx/sites-available/prometheus.asim.pt sites-enabled/
sudo systemctl restart nginx
sudo vi sites-available/prometheus.asim.pt 
sudo systemctl restart nginx
sudo cp sites-available/prometheus.asim.pt sites-available/grafana.asim.pt
sudo vi sites-available/grafana.asim.pt 
sudo ln -s /etc/nginx/sites-available/grafana.asim.pt sites-enabled/
sudo nginx -t
sudo systemctl restart nginx
sudo cp sites-available/prometheus.asim.pt sites-available/alerts.asim.pt
sudo vi sites-available/alerts.asim.pt 
sudo ln -s /etc/nginx/sites-available/alerts.asim.pt sites-enabled/
sudo systemctl restart nginx
exit
ip a
sudo apt update
sudo apt install nfs-common
ip a
clear
sudo vi /etc/fstab 
mkdir scripts
sudo mount -a
cp scripts/getstats.pl .
ll
crontab -e
sudo shutdown now
sudo vi /etc/nginx/sites-available/webmail.asim.pt 
sudo systemctl restart nginx
sudo systemctl status nginx
sudo vi /etc/nginx/sites-available/webmail.asim.pt 
sudo systemctl restart nginx
cd /etc/nginx/
sudo cp sites-available/prometheus.asim.pt sites-available/backup.asim.pt
sudo vi sites-available/backup.asim.pt 
sudo ln -s /etc/nginx/sites-available/backup.asim.pt sites-enabled/
sudo nginx -t
sudo systemctl restart nginx
sudo vi sites-available/backup.asim.pt 
sudo systemctl restart nginx
sudo vi sites-available/backup.asim.pt 
sudo systemctl restart nginx
sudo vi sites-available/backup.asim.pt 
sudo systemctl restart nginx
cd
sudo vi /etc/rsyslog.conf
sudo vi /etc/rsyslog.d/50-default.conf 
sudo systemctl restart rsyslog
sudo vi /etc/rsyslog.d/50-default.conf 
sudo -i
exit
ll
crontab -e
