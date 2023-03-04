## easyn2n
EasyN2N由Bug侠基于N2N开发，主要用于虚拟局域网的组建 <br>
此仓库将服务端转化为docker启动 <br>
宿主机需关闭防火墙或开放对应udp端口 <br>
[点击此处](https://bugxia.com/357.html)点击此处下载客户端 <br>
## 直接创建docker容器
所使用的是我已经创建好的镜像 <br>
容器内默认端口为1020  小组名称：121233 <br>
```
docker run --name easyn2n -d -p 1020:1020/udp bssama/easyn2n
```
宿主机需开放udp 1020端口
## 创建镜像
若要自定义端口和小组名称，请修改Dockerfile文件 <br>
1.修改端口请将EXPOSE后的'1020'修改为自定义的端口 <br>
2.修改启动命令请将CMD后的命令修改为想要的启动命令，详细请参考下面的附加参数 <br>
3.在Dockerfile的目录下执行镜像构建命令 <br>
```
docker build -t easyn2n .
```
请注意，命令的最后有一个'.' <br>
easyn2n是镜像名 <br>
之后使用自定义的镜像创建docker容器
## EasyN2N 服务端（Supernode）附加参数 <br>
-p 端口 | Supernode监听端口，默认 7654 <br>
-F federation名称 | supernode federation名称，默认为 *Federation <br>
-l 主机:端口 | 和 -F 配合，已知的一台Supernode地址和端口 <br>
-M | 关闭非用户名密码认证的群组的MAC和IP地址欺骗保护功能 <br>
-V 文本 | 自定义字符串（最长19位），用于在管理输出日志中展示 <br>
-c 组名称配置文件路径 | 该配置文件中包含允许使用的组名称 <br>
-a IP段 | 用于自动分配IP，格式如 -a 192.168.0.0-192.168.255.0/24 <br>
-t 端口 | 用于管理supernode <br>
--management_password 文本 | 管理端的密码 <br>
-v | 输出更多日志 <br>
