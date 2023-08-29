# Private Docker Registry with Let's Encrypt

## Base image
- [linuxserver/swag](https://hub.docker.com/r/linuxserver/swag)
- [registry](https://hub.docker.com/_/registry)

## How to use
### Prerequisite
#### Optional
- create a separated volume for docker image data
- mount volume to /docker-mnt directory

### Setup directories and password
# mkdir -p /docker-mnt/auth
# mkdir -p /docker-mnt/data
# docker run --entrypoint htpasswd httpd:2 -Bbn <username> <password> > /docker-mnt/auth/htpasswd

### Run it
# e.g. if you want to serve your private registry at registry.example.com
# SUBDOMAIN=<registry> URL=<exmaple.com> PUBLIC_IP=<X.X.X.X> STAGING=true docker compose up -d 
> See more details in the comments of `docker-compose.yaml`

## Limitation
- Only support single subdomain, which is usually enough
