FROM ubuntu:bionic

LABEL maintainer="Mojtaba Zarezadeh <mojtab.zare@gmail.com>"

RUN apt update && apt install -y software-properties-common

RUN add-apt-repository ppa:nginx/stable
RUN apt install -y nginx

COPY nginx.conf /etc/nginx/nginx.conf


VOLUME /data

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
