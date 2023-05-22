FROM ubuntu
RUN apt-get update
RUN apt-get install -y nginx && echo "daemon off;" >> /etc/nginx/nginx.conf && echo "<html><body><h1>Minha primeira imagem</h1></body></html>" > /var/www/html/index.html

VOLUME ["/etc/nginx", "/usr/share/nginx/html"]
WORKDIR /usr/name/nginx/html

EXPOSE 80
CMD ["service", "nginx", "start"]