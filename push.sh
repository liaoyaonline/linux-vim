#!/bin/bash
function push_bookmarks() #将标签上传到github
{
    git add /home/liaoya/github/linux-vim/Bookmarks
    git commit -m "日常更新标签"
    git push
}
push_bookmarks
