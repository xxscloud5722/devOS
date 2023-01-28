FROM centos:centos8
RUN ["sh", "-c", "cd /etc/yum.repos.d/ && sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-* && sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*"]
RUN ["sh", "-c", "yum update -y && yum -y install vim net-tools unzip zip"]
WORKDIR /home
CMD ["sh", "-c", "sleep 365d"] 
# 阿里云源
# registry.cn-hangzhou.aliyuncs.com/xxscloud/devos:1.0.0