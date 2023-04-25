FROM  alpine:3.17.3:latest
RUN apk-get -y update && install java* -y
COPY . /usr/local/apache2/htdocs/
EXPOSE 80
CMD ["httpd-foreground"]