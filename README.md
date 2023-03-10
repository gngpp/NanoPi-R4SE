<div align="center">
<a href="/LICENSE">
    <img src="https://img.shields.io/github/license/gngpp/NanoPi-R4SE?style=flat&a=1" alt="">
  </a>
  </a><a href="https://github.com/gngpp/NanoPi-R4SE/releases">
    <img src="https://img.shields.io/github/release/gngpp/NanoPi-R4SE.svg?style=flat">
  </a><a href="hhttps://github.com/gngpp/NanoPi-R4SE/releases">
    <img src="https://img.shields.io/github/downloads/gngpp/NanoPi-R4SE/total?style=flat">
  </a>
</div>
<br>

# NanoPi-R4SE

### 支持在线升级，自动扩容根分区
> 若非扩容升级则去掉参数EXPAND
- SSH进入终端
```
# 会保存配置备份
EXPAND=true bash +x ~/update.sh

# 跳过备份
EXPAND=true SKIP_BACK=1 bash +x ~/update.sh

# 默认走代理下载，如不需要代理下载固件，执行下面命令
EXPAND=true USE_PROXY=false bash +x ~/update.sh

# 默认使用gh.flyinbug.top/gh代理，自定义代理执行下面命令
EXPAND=true PROXY=gh.flyinbug.top/gh bash +x ~/update.sh
```

### 默认编译  
> 事先说明，楼主的RK3399体质比较辣鸡，特意调了超频电压，请按需改（假如超坏了也别找楼主），自带USB comfast cf-811ac驱动和GPU驱动。
- 用户名：root 密码：password  管理IP：10.0.1.1
- 下载地址：https://github.com/gngpp/NanoPi-R4SE/releases
- 电报群：https://t.me/DHDAXCW

### 预览
<img src="./build/preview/login.png"/>
<img src="./build/preview/home.png"/>
<img src="./build/preview/vssr.png"/>
<img src="./build/preview/light.png"/>
