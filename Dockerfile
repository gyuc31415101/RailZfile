FROM zhaojun1998/zfile
USER root
RUN apt update -y && apt upgrade -y && apt install wget -y
RUN mkdir .zfile-v4 && mkdir .zfile-v4/db
RUN sleep 20 && wget -O /root/.zfile-v4/db/zfile https://raw.githubusercontent.com/gyuc31415101/RailZfile/main/zfile
EXPOSE 8080
