# use a node base image
FROM node:7-onbuild

# set maintainer
LABEL maintainer "hogan.sean1999@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://192.168.1.11:8000 || exit 1

# tell docker what port to expose
EXPOSE 8000
