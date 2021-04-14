# NAS_Build
  用Ubuntu Server 64位来搭建家用NAS，包括vsftpd、docker、embyserver、nextcloud

## Notice！
  The nextcloud that this shell script installed is a docker image, you still need to run and configure it with your hand.
  
  The script will install the deb called "emby.deb" in current folder,but if doesn't have one,script will download from offical github link and automatically install the version 4.3.1.0
  
  For China mainland user,sometimes it can't download the embyserver,you need to use proxy,download the file mannually and rename it as "emby.deb",so the script could install it.
  
## 注意事项
  Nextcloud安装的是docker的镜像，需要自己手动启动
  
  Embyserver默认安装当前目录下名为emby的deb文件，如果没有则会从官方的github下载4.3.1.0版本的deb，并自动安装
  
 ###2021.04.14补充
  1.考虑更换媒体服务器（JellyFin）
  2.Microsoft出品的Powertoy可以批量+正则表达式修改文件名。
  3.使用宝塔面板来控制ftp服务。vsftpd的对应端口一旦用frp进行内网穿透，就会神tm变成不安全链接
