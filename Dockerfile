FROM ubuntu
MAINTAINER tinsina (tinsina@live.fr)
RUN apt-get update
# we use DEBIAN_FRONTEND=noninteractive to bypass git locale issue
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
RUN rm -Rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
