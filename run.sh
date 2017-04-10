docker stop habridge
docker rm habridge
docker pull kd5ftn/docker-ha-bridge
#docker run -v /home/nick/habridge:/root/habridge/data/:rw -v /etc/localtime:/etc/localtime -p 80:80 --name habridge --restart=always -d kd5ftn/docker-ha-bridge:latest
#docker run -v /home/nick/habridge:/root/habridge/data/:rw -v /etc/localtime:/etc/localtime --net=host --name habridge --restart=always -d kd5ftn/docker-ha-bridge:latest
docker run -v /home/nick/habridge:/data/:rw -v /etc/localtime:/etc/localtime -p 80:80 -p 50000:50000 --name habridge --restart=always -d kd5ftn/docker-ha-bridge:latest
docker ps
