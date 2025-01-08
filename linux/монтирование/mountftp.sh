apt install curlftpfs
mkdir -p /mnt/ftpshare
chown $USER /mnt/ftpshare
chmod ug +rwx /mnt/share

#manualy mount
#`curlftpfs ftp://password:uname@ftp.server.ru /mnt/ftpshare/ -o allow_other,uid=1000,gid=1000,umask=077,default_permissions`
#edit the fstab
#curlftpfs#username:password@192.168.1.2 /mnt/ftpshare fuse auto,user,uid=3000,allow_other,_netdev 0 0