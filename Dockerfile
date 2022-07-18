docker run -d --name=zfile --restart=always \
    -p 8080:8080 \
    -v /root/zfile/db:/root/.zfile-v4/db \
    -v /root/zfile/logs:/root/.zfile-v4/logs \
    zhaojun1998/zfile
