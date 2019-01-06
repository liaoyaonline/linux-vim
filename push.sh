#!/bin/bash
function push_bookmarks() #将标签上传到github
{
    sudo git add /home/liaoya/github/linux-vim/*
    git commit -m "日常更新"
    git push origin master
}
push_bookmarks
