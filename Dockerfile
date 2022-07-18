FROM centos:7
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
RUN yum install -y java-1.8.0-openjdk unzip wget
RUN export ZFILE_INSTALL_PATH=/home/zfile
RUN mkdir -p /home/zfile && cd /home/zfile
RUN wget https://c.jun6.net/ZFILE/zfile-release.war
RUN unzip zfile-release.war && rm -rf zfile-release.war
RUN chmod +x $ZFILE_INSTALL_PATH/bin/*.sh
CMD ["~/home/zfile/bin/start.sh"]
