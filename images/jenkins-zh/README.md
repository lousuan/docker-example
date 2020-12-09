### 说明

该 jenkins 基于官方 jenkins:lts 镜像制作，主要改动有：

1. 时区修改为东八区
2. 预装了 maven 和 nodejs 10
3. 安装了以下插件
   - `localization-zh-cn` 中文本地化插件
   - `publish-over-ssh` jenkins ssh 插件，用于连接到其他机器执行脚本
   - `git` 集成 git 客户端，用于拉取图片
