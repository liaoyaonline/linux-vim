#!/bin/bash
function install_vim_on_ubuntu()
{
    sudo apt-get remove -y vim vim-runtime gvim
    sudo apt-get remove -y vim-tiny vim-common vim-gui-common
}
