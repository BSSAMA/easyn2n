## easyn2n
EasyN2N由Bug侠基于N2N开发，主要用于虚拟局域网的组建 <br>
此仓库将服务端转化为docker启动 <br>
需关闭防火墙或开放对应udp端口
[点击此处](https://bugxia.com/357.html)点击此处下载客户端 <br>
## 直接拉取docker容器
所使用的是已经创建好的镜像 <br>
容器内默认端口为1020  小组名称：121233 <br>
```
docker run --name easyn2n -d -p 1020:1020/udp bssama/easyn2n
```
## 自定义镜像
修改DockerFile文件 <br>
