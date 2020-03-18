#安装FTP
apt update
apt install vsftpd vim

#创建VSFTPD的配置文件，备份并替代etc目录下的样本文件
cat > vsftpd.conf<<"EOF"
listen=YES
listen_ipv6=NO
local_enable=YES
one_process_model=YES
use_localtime=YES
write_enable=YES
delete_failed_uploads=YES
accept_timeout=120
connect_timeout=250
ftpd_banner=Welcome to Devgial's NAS Server
utf8_filesystem=YES
EOF
cp /etc/vsftpd.conf /etc/vsftpd.conf.bak
cp -f vsftpd.conf /etc/vsftpd.conf
service vsftpd restart

#从阿里云镜像安装docker
apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://mirrors.aliyun.com/docker-ce/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://mirrors.aliyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"
apt update
apt install docker-ce

#安装nextcloud，embyserver
docker pull nextcloud
if [ -f "$emby"]
then
dpkg -i emby.deb
else
echo "Try Download the install file from Internet,may not success..."
echo "If it didn't work,Please enter Ctrl+C to stop this shell"
echo "After that, drop the file in the folder where this shell is,rename it as emby.deb"
wget https://github.com/MediaBrowser/Emby.Releases/releases/download/4.3.1.0/emby-server-deb_4.3.1.0_amd64.deb
dpkg -i emby-server-deb_4.3.1.0_amd64.deb
fi