FROM nginx:alpine

WORKDIR /app

COPY index.html .

ENV NODE_OPTIONS=--max_old_space_size=16384

COPY /certs /etc/nginx/certs

COPY /nginx.conf /etc/nginx/conf.d/default.conf

WORKDIR /usr/share/nginx/html

EXPOSE 80-443

CMD ["nginx" , "-g" , "daemon off;"]