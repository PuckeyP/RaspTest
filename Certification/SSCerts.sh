
sudo openssl req    -x509 \
                    -nodes \
                    -days 365 \
                    -newkey \
                    rsa:2048 \
                    -keyout jphas.duckdnsorg.key \
                    -out jphas.duckdns.org.crt \
                    -config jphas.duckdns.org.conf