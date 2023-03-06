## easyn2n
EasyN2N由Bug侠基于N2N开发，主要用于虚拟局域网的组建 <br>
此仓库将服务端转化为docker启动 <br>
宿主机需关闭防火墙或开放对应udp端口 <br>
[点击此处](https://bugxia.com/357.html)点击此处下载客户端 <br>
## 直接创建docker容器
所使用的是我已经创建好的镜像 <br>
容器内默认端口为1021  小组名称：121233 <br>
```
docker run --name easyn2n -d -p 1021:1021/udp bssama/easyn2n
```
宿主机需开放udp 1020端口<br>
## 自定义端口和小组名称
！！！请先将命令对应位置修改完毕后再执行命令！！！<br>
```
docker run --name easyn2n -d -p 端口号:1021/udp -e "cname=小组名称" bssama/easyn2n
```
例如: “端口号”替换为-->“8080”,“小组名称”替换为-->“123456”
