sudo docker pull nginx
sudo docker run --restart always \
                -d nginx \
                -p 80:80 \
                -p 443:443 \
                -v /home/pi/RaspTest/Nginx/Config:/etc/nginx/conf \
                -v /home/pi/RaspTest/Nginx/Content:/usr/share/nginx/html \
                -v /home/pi/RaspTest/Nginx/Certs:/etc/nginx/certs
