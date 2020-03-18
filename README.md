# NAS_Build
  用Ubuntu Server 64位来搭建家用NAS，包括vsftpd、docker、embyserver、nextcloud

## Notice！
  The nextcloud that this shell script installed is a docker image, you still need to run and configure it with your hand.\n
  The script will install the deb called "emby.deb" in current folder,but if doesn't have one,script will download from offical github link and automatically install the version 4.3.1.0\n
  For China mainland user,sometimes it can't download the embyserver,you need to use proxy,download the file mannually and rename it as "emby.deb",so the script could install it.
  
## 注意事项
  Nextcloud安装的是docker的镜像，需要自己手动启动\n
  Embyserver默认安装当前目录下名为emby的deb文件，如果没有则会从官方的github下载4.3.1.0版本的deb，并自动安装
