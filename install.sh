#!/bin/bash

# 在ubuntu上源代码安装vim
function compile_vim_on_ubuntu()
{
    sudo apt-get remove -y vim vim-runtime gvim//卸载vim vim-runtime gvim
    sudo apt-get remove -y vim-tiny vim-common vim-gui-common vim-nox//卸载 vim-tiny vim-common vim-gui-common vim-nox
    sudo rm -rf /usr/bin/vim*//删除vim相关组件
    sudo rm -rf /usr/local/bin/vim*
    sudo rm -rf /usr/share/vim/vim*
    sudo rm -rf /usr/local/share/vim/vim*
    rm -rf ~/vim

    sudo apt-get install -y libncurses5-dev libgnome2-dev libgnomeui-dev \
        libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
        libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev python3-dev ruby-dev lua5.1 lua5.1-dev//安装软件

    git clone https://github.com/vim/vim.git ~/vim//从github上下载到vim文件夹
    cd ~/vim
    ./configure --with-features=huge \
        --enable-multibyte \
        --enable-rubyinterp \
        --enable-pythoninterp \
        --with-python-config-dir=/usr/lib/python2.7/config \
        --enable-perlinterp \
        --enable-luainterp \
        --enable-gui=gtk2 \
        --enable-cscope \
        --prefix=/usr
    make
    sudo make install
    cd -
}


# 安装ubuntu发行版必要软件
function install_prepare_software_on_ubuntu()
{
    sudo apt-get install -y ctags build-essential cmake python-dev python3-dev fontconfig curl libfile-next-perl ack-grep
}


# 拷贝文件
function copy_files()
{
    rm -rf ~/.vimrc
    ln -s ${PWD}/.vimrc ~

    rm -rf ~/.vimrc.local
    cp ${PWD}/.vimrc.local ~

    rm -rf ~/.ycm_extra_conf.py
    ln -s ${PWD}/.ycm_extra_conf.py ~

    mkdir ~/.vim
    rm -rf ~/.vim/colors
    ln -s ${PWD}/colors ~/.vim

    rm -rf ~/.vim/ftplugin
    ln -s ${PWD}/ftplugin ~/.vim
}


# 安装linux平台字体
function install_fonts_on_linux()
{
    mkdir ~/.fonts
    rm -rf ~/.fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf
    cp ./fonts/Droid\ Sans\ Mono\ Nerd\ Font\ Complete.otf ~/.fonts

    fc-cache -vf ~/.fonts
}

# 下载插件管理软件vim-plug
function download_vim_plug()
{
    curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
}

# 安装vim插件
function install_vim_plugin()
{
    vim -c "PlugInstall" -c "q" -c "q"
}

# linux编译ycm插件
function compile_ycm_on_linux()
{
    cd ~/.vim/plugged/YouCompleteMe
    ./install.py --clang-completer
}


function begin_install_vimplus()
{
    copy_files
    install_fonts_on_linux
    download_vim_plug
    install_vim_plugin
    compile_ycm_on_linux
    print_logo
}

# 在ubuntu发行版安装vimplus
function install_vimplus_on_ubuntu()
{
    install_prepare_software_on_ubuntu
    begin_install_vimplus
}


# 调用main函数
install_vimplus_on_ubuntu


