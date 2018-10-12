#!/bin/bash
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
print_logo
