FROM registry:2

COPY ./openssl.cnf /certs/openssl.cnf
COPY ./start.sh /start.sh

RUN \
  apk update && \
  apk add openssl && \
  chmod +x /start.sh

ENTRYPOINT ["/start.sh"]