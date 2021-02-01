sudo docker pull nginx
sudo docker run --restart always -d \
                -p 80:80 \
                -p 443:443 \

                -v /home/pi/Nginx/Config:/etc/nginx/conf \
                -v /home/pi/Nginx/Content:/usr/share/nginx/html \
                -v /home/pi/Nginx/Certs:/etc/nginx/certs
