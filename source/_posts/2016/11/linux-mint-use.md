title: Ubuntu日常问题搜集和解决办法
date: 2016-11-11 09:30
comments: on
category: Linux
tags: [Linux,Ubuntu]
id: 201611110930
---

搜集了日常工作中linuxmint的使用的命令备份和遇到的问题以及解决办法.(持续更新中)
<!-- more -->

## 保持ssh链接超时不自动断开

用ssh链接服务端，一段时间不操作或屏幕没输出（比如复制文件）的时候，会自动断开.

在客户端~/.ssh/config文件(没有则新建)添加配置`ServerAliveInterval 30`

```


Host github.com

     IdentityFile ~/.ssh/id_rsa_github

Host git.oschina.net

     IdentityFile ~/.ssh/id_rsa_gitosc

Host 192.168.1.72

     IdentityFile ~/.ssh/id_rsa_deploy

 ServerAliveInterval 30

```

## 常用软件源

```js
//git
sudo add-apt-repository ppa:git-core/ppa

//atom
sudo add-apt-repository ppa:webupd8team/atom

//wiz
sudo add-apt-repository ppa:wiznote-team

//nodev7
curl -sL https://deb.nodesource.com/setup_7.x | sudo -E bash -

//nodev6
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

//nginx  --stable
//下载此key文件
http://nginx.org/keys/nginx_signing.key
//然后
sudo apt-key add nginx_signing.key

```

## Oh-My-Zsh
```js
$ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

## 必备软件

```js
//apt 安装
sudo apt intall git subversion wget zsh wiznote node hexo-cli guake atom rar unrar p7zip-full gshutdown

//需要下载deb安装的软件：
brackets，mysql，jd-gui，filezilla, smartsvn, smartgit,smartsynchronize,

```
