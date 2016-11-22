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

//firefox stable
sudo add-apt-repository ppa:ubuntu-mozilla-security/ppa

//firefox beta
sudo add-apt-repository ppa:mozillateam/firefox-next

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
brackets，mysql，jd-gui，filezilla, smartsvn, smartgit,smartsynchronize,DBeaver

```

## Sublime Text 3输入中文办法
直接下载已经编译好的 `libsublime-imfix.so`文件,[点击此处下载](http://lise-blog.oss-cn-shanghai.aliyuncs.com/libsublime-imfix.so)

然后将libsublime-imfix.so拷贝到sublime_text所在文件夹

`sudo mv libsublime-imfix.so /opt/sublime_text/`

修改文件/usr/bin/subl的内容

`sudo gedit /usr/bin/subl`

将
```sh
#!/bin/sh

exec /opt/sublime_text/sublime_text "$@"
```

修改为
```sh
#!/bin/sh

LD_PRELOAD=/opt/sublime_text/libsublime-imfix.so exec /opt/sublime_text/sublime_text "$@"
```

此时，在命令中执行 subl 将可以使用搜狗for linux的中文输入.

为了使用鼠标右键打开文件时能够使用中文输入，还需要修改文件`sublime_text.desktop`的内容。

命令

`sudo gedit /usr/share/applications/sublime_text.desktop`

将[Desktop Entry]中的字符串

`Exec=/opt/sublime_text/sublime_text %F`

修改为

`Exec=bash -c "LD_PRELOAD=/opt/sublime_text/libsublime-imfix.so exec /opt/sublime_text/sublime_text %F"`

将[Desktop Action Window]中的字符串

`Exec=/opt/sublime_text/sublime_text -n`

修改为

`Exec=bash -c "LD_PRELOAD=/opt/sublime_text/libsublime-imfix.so exec /opt/sublime_text/sublime_text -n"`

将[Desktop Action Document]中的字符串

`Exec=/opt/sublime_text/sublime_text --command new_file`

修改为

`Exec=bash -c "LD_PRELOAD=/opt/sublime_text/libsublime-imfix.so exec /opt/sublime_text/sublime_text --command new_file"`

注意：

修改时请注意双引号"",否则会导致不能打开带有空格文件名的文件。

此处仅修改了`/usr/share/applications/sublime-text.desktop`，但可以正常使用了。

`opt/sublime_text/`目录下的`sublime-text.desktop`可以修改，也可不修改。

附上已经修改过的`sublime-text.desktop`文件,[点击此处下载](http://lise-blog.oss-cn-shanghai.aliyuncs.com/libsublime-imfix.so)

运行命令`sudo mv sublime-text.desktop /usr/share/applications/`即可替换desktop文件.
