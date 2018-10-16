#!/bin/bash
function clone_bookmarks()
{
    cp /home/liaoya/.config/google-chrome/Default/Bookmarks /home/liaoya/github/linux-vim
    cd /home/liaoya/github/linux-vim
    bash /home/liaoya/github/linux-vim/push.sh
    cd 
}
clone_bookmarks
