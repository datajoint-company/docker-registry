FROM registry:2

COPY ./openssl.cnf /certs/openssl.cnf

RUN \
  apk update && \
  apk add openssl && \
  #create Trusted cert
  openssl req -x509 -nodes -days 3600 -newkey rsa:2048 -keyout /certs/domain.key -out /certs/domain.crt -config /certs/openssl.cnf -extensions 'v3_req'
