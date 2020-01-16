#creating Nginx server
FROM ubuntu:latest
MAINTAINER saiteja1243@gmail.com
RUN apt-get update
RUN apt-get install -y nginx
RUN apt-get clean
RUN service nginx restart
RUN rm -rf /var/lib/apt/lists/*
ADD index.http /usr/share/nginx/http/index.http
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
EXPOSE 80
