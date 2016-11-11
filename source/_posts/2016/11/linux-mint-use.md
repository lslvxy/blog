title: Ubuntu日常问题搜集和解决办法
date: 2016-11-11 09:30
comments: on
category: Linux
tags: [Linux,Ubuntu]
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

