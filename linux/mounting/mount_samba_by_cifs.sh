apt install cifs-utils
#manually mount
mkdir -p /mnt/share
sudo mount -t cifs -o username=yourusername,password=1234 ,uid=1000,iocharset=utf8 //sharehostname/sharefolder /mnt/share

#make a credentials file
#example /root/.smbcreds
#username=yourusername
#password=123456

#edit the fstab
#//sharehostname/share /mnt/share cifs user,rw,uid$('id -u username'),credentials=/root/.smbclient 0 0