### 说明

该 jenkins 基于官方 jenkinsci/blueocean 镜像制作，主要改动有：

1. 时区修改为东八区
2. 预装了 maven，maven 源配置为阿里源 
3. 预装了 nodejs 10 和 cnpm，cnpm 默认设置为淘宝源
4. jenkins 安装了以下插件
   - `localization-zh-cn` 中文本地化插件
   - `publish-over-ssh` jenkins ssh 插件，用于连接到其他机器执行脚本
   - `git` 集成 git 客户端，用于拉取代码
