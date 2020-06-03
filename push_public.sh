#!/bin/bash
# 部署到 github pages 脚本
# 错误时终止脚本
set -e

# 打包。even 是主题
hugo

# 进入打包文件夹
cd public

# Add changes to git.

git add .

# Commit changes.
msg="博客内容更新 `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# 推送到github
# nusr.github.io 只能使用 master分支
git push

# 回到原文件夹
cd ..

