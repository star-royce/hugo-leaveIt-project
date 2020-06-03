---
title: "如何使用?"
date: 2020-06-03
slug: "hugo leaveIt project help doc"
draft: false
tags:
- Help
- Hugo
categories:
- Help
---


# hugo-leaveIt-project

使用hugo LeaveIt主题，并做了自定义的微调。

一个已经配置好了的Hugo + LeaveIt的博客网站源码

**Demo**: https://star-royce.github.io/royce.blog.io

**使用方式**: 

1. 本地下载安装好hugo
2. 将此项目下载到指定根目录后，修改“config.toml” 中的个人信息
3. 执行 `hugo server -w` 本地运行，查看网站效果

**部署到GitHub**: 

1. GitHub Page 准备
2. 源文件项目设置子模块项目, 项目根目录下执行
```
# 删除缓存
git rm --cached public
# 删除.gitmodules文件
rm -rf .gitmodules
# 删除 .git/config文件中的subModule模块
vim .git/config 
# 删除本地subModule模块相关文件
rm -rf .git/modules/path_to_submodule
# 关联子模块
git submodule add -b master <xxx.io项目clone url> public
```
3. 运行sh脚本，`sh push_public.sh`

> 详细文档: https://star-royce.github.io/royce.blog.io/2020/06/hugo-github-combine/
