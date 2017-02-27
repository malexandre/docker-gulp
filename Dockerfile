FROM alpine

RUN apk update && apk add nodejs && rm -rf /var/cache/apk/*
RUN npm install -g bower gulp

ADD . /code
WORKDIR /code
