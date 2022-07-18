FROM centos:7
USER root
EXPOSE 8080
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
RUN yum install -y java-1.8.0-openjdk unzip wget curl
RUN wget https://c.jun6.net/ZFILE/zfile-release.war
RUN unzip zfile-release.war && rm -rf zfile-release.war
RUN chmod +x /bin/*.sh
ENTRYPOINT ["sh","./bin/start.sh"]
#CMD ["./bin/start.sh"]
