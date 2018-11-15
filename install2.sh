#!/bin/bash
function mkdir_wenjian() #创建熟悉文件夹
{
    cd 
    mkdir Cwenjian
    mkdir github
    mkdir cppwenjian
    cd 
}
#打印个人logo
function print_logo()
{
    color="$(tput setaf 4)"
    printf "${color}"
    echo '        __     ____           ______    '
    echo '       / /  /\/ __ \  _____  / ____ \   '
    echo '      / /__/ / /_/ / /____/ / /___/ /   '
    echo '     /______/ ,___/        / /___/ /    '
    echo '           /_/            /_______/     '
    echo '                                        '
    echo ''
    echo ''
    echo 'Successful installation!!!'
    echo 'author: liaoya '
    echo 'https://github.com/liaoyaonline'
}
#导入书签如果有时间的话可以在导入书签的时候并且生成备份书签的sh文件
