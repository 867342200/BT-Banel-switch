#!/usr/bin/env bashTH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
export PATH

echo "-----------------------------------"
echo "-        宝塔面板开关V1.0         -"
echo "-                                 -"
echo "-  快捷的开关控制宝塔面板         -"
echo "-  www.520iloveyou.vip            -"
echo "-----------------------------------"


if [ -f "/www/server/panel/data/close.pl" ];then
  echo "检测到宝塔面板已关闭"
  echo -e "\033[35m 开启中！ \033[0m"
  mv /www/server/panel/data/close.pl /www/server/panel/data/close.pl.backup
else
  echo "检测到宝塔面板已开启"
  echo -e "\033[31m 关闭中！ \033[0m"
  mv /www/server/panel/data/close.pl.backup /www/server/panel/data/close.pl
fi

