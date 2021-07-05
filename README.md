# NAS_Build
  用Ubuntu Server 64位来搭建家用NAS，包括vsftpd、docker、embyserver、nextcloud

## Notice！
  The nextcloud that this shell script installed is a docker image, you still need to run and configure it with your hand.
  
  The script will install the deb called "emby.deb" in current folder,but if doesn't have one,script will download from offical github link and automatically install the version 4.3.1.0
  
  For China mainland user,sometimes it can't download the embyserver,you need to use proxy,download the file mannually and rename it as "emby.deb",so the script could install it.
  
## 注意事项
  Nextcloud安装的是docker的镜像，需要自己手动启动
  
  Embyserver默认安装当前目录下名为emby的deb文件，如果没有则会从官方的github下载4.3.1.0版本的deb，并自动安装
  
 ### 2021.04.14补充
  1.考虑更换媒体服务器（JellyFin）
  2.Microsoft出品的Powertoy可以批量+正则表达式修改文件名。
  3.使用宝塔面板来控制ftp服务。vsftpd的对应端口一旦用frp进行内网穿透，就会神tm变成不安全链接
  
 ### 2021.07.05
   1.  最后还是没换成Jellyfin（各方面比emby差远了...)
   2.  PowerToy确实方便了我在Windows的主力机中轻松的编辑出符合emby命名规范的结构
   3.  宝塔面板最后弃用了，突然想到Windows的文件浏览器自带一种叫网络驱动器的功能，开启这个功能我就可以像浏览文件夹一样浏览、修改远程服务器中的内容
   4.  上条中需要给服务器安装SMB文件服务器才可以使用
   5.  NextCloud算是彻底弃用了，相对的，办公-学习的文件全部用OneDrive同步了
   6.  想在Kodi上DD各位虚拟主播，由real-url修改来的Python脚本正在制作中
   7.  根据上述，近期开始修改Shell命令，并上传Python脚本
