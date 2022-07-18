FROM centos:7
USER root
EXPOSE 8080
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
RUN yum install -y java-1.8.0-openjdk unzip wget curl
RUN export ZFILE_INSTALL_PATH=~/zfile
RUN mkdir -p ~/zfile && cd ~/zfile
RUN wget https://c.jun6.net/ZFILE/zfile-release.war
RUN unzip zfile-release.war && rm -rf zfile-release.war
RUN chmod +x ~/zfile/bin/*.sh
CMD ["~/zfile/bin/start.sh"]
