#!/bin/bash
function clone_bookmarks() #存放在 /etc/profile.d//登录后会启动该文件夹里面的所有.sh文件
{
    cp /home/liaoya/.config/google-chrome/Default/Bookmarks /home/liaoya/github/linux-vim
}
clone_bookmarks
