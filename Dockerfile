#所需镜像
FROM centos:7
#镜像维护者的姓名和邮箱地址
LABEL maintainer="zy2556370433@qq.com"
#将构建上下文目录中的文件复制到新的一层的镜像内的位置
COPY ./nginx.repo /etc/yum.repos.d
#建立元数据，清除缓存
RUN yum makecache
#运行安装nginx的软件包
RUN yum install -y nginx
#修改nginx配置文件，以非daemon方式启动
RUN echo "this is class cloud1 zy" > /usr/share/nginx/html/index.html
#开启80端口
EXPOSE 80

