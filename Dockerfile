# 镜像文件
# FROM golang:latest
# 镜像中项目路径
# WORKDIR $GOPATH/src/test
# 拷贝当前目录代码到镜像
# COPY . $GOPATH/src/test
# 制作镜像
# RUN go build .
# 暴露端口
# EXPOSE 8000
# 程序入口
# ENTRYPOINT ["./main"]


# 基础镜像
# FROM golang:latest
 
# 容器环境变量设置，会覆盖默认的变量值
# ENV GOPROXY=https://goproxy.cn,direct
# ENV GO111MODULE="on"
 
 
# 工作区
# WORKDIR /go/src/app
 
# 复制仓库源文件到容器里
# COPY . .
 
# 编译可执行二进制文件
# RUN go build -o main
 
# 容器向外提供服务的暴露端口
# EXPOSE 8088
 
# 启动服务
# ENTRYPOINT ["./main"]



FROM golang:latest

MAINTAINER Razil "412657308@qq.com"

WORKDIR $GOPATH/cicd-demo
COPY . $GOPATH/cicd-demo
RUN go build .

EXPOSE 8000

ENTRYPOINT ["./cicd-demo"]




