FROM nginx:alpine

COPY site/ /usr/share/nginx/html

CMD cd /usr/share/nginx/html && sed -e s/hostname/$(hostname)/ -i index.html && sed -e s/endip/$(hostname -i)/ -i index.html; nginx -g 'daemon off;'

EXPOSE 80
