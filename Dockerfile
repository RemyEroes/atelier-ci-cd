FROM nginx:alpine

COPY nginx.conf /etc/nginx/nginx.conf

COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY texture.jpg /usr/share/nginx/html/texture.jpg

EXPOSE 80
