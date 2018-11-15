#!/bin/bash
function download_googlechrome() #下载安装配置google chrome
{
    sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
    wget -q -O - https://dl.google.com/linux/linux_signing_key.pub  | sudo apt-key add -
    sudo apt-get update
    sudo apt-get install google-chrome-stable

}

function download_aria2() #下载安装配置aria2后面两个文件是google浏览器插件
{
    sudo apt-get install aria2
    sudo mkdir /etc/aria2 #新建文件夹用来存储aria2相关配置
    sudo vim /etc/aria2/aria2.session
    sudo chmod 777 /etc/aria2/aria2.session
    cp aria2.conf /etc/aria2 #将配置好的文件复制进入aria2文件夹
    cp -r nimeojfecmndgolmlmjghjmbpdkhhogl /home/liaoya/.config/google-chrome/Default/Extensions
    cp -r hgcdhkbgbadnkokndhlicgflfkpkhpfo /home/liaoya/.config/google-chrome/Default/Extensions
}

function download_shadowsocks-qt5() #下载安装配置shadowsocks-qt5
{
    sudo apt-get install shadowscks-qt5
}

function download_vim() #下载安装vim
{
    sudo apt-get install vim
}

function download_software() #下载安装配置常用软件
{
    download_google
}

