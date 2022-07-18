FROM centos:7
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
RUN yum install -y java-1.8.0-openjdk unzip
RUN export ZFILE_INSTALL_PATH=~/zfile
RUN mkdir -p $ZFILE_INSTALL_PATH && cd $ZFILE_INSTALL_PATH
RUN wget https://c.jun6.net/ZFILE/zfile-release.war
RUN unzip zfile-release.war && rm -rf zfile-release.war
RUN chmod +x $ZFILE_INSTALL_PATH/bin/*.sh
CMD ["~/zfile/bin/start.sh"]
