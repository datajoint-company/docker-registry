FROM linuxserver/swag

COPY ./app.conf /config/nginx/site-confs/app.conf
ARG SUBDOMAIN
ARG URL
RUN sed -i "s|{{SUBDOMAINS}}|${SUBDOMAIN}|g" /config/nginx/site-confs/app.conf && \
    sed -i "s|{{URL}}|${URL}|g" /config/nginx/site-confs/app.conf

