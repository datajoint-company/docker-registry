#!/usr/bin/env /bin/sh

sed -i "s|{{SUBDOMAINS}}|${SUBDOMAINS}|g" /certs/openssl.cnf
sed -i "s|{{URL}}|${URL}|g" /certs/openssl.cnf
sed -i "s|{{PUBLIC_IP}}|${PUBLIC_IP}|g" /certs/openssl.cnf

#create Trusted cert
openssl req -x509 -nodes -days 3600 -newkey rsa:2048 -keyout /certs/domain.key -out /certs/domain.crt -config /certs/openssl.cnf -extensions 'v3_req'

/entrypoint.sh /etc/docker/registry/config.yml