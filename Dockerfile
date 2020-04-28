# use a node base image
FROM node

# set maintainer
LABEL maintainer "jack.heaslip@students.ittralee.ie"

RUN apt-get update && apt-get upgrade -y \
    && apt-get clean

RUN mkdir /app
WORKDIR /app

COPY package.json /app/
RUN npm install --only=production

COPY src /app/src

EXPOSE 8080

CMD [ "npm", "start" ]
