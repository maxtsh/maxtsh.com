# Use an official Nginx runtime as a parent image
FROM nginx:alpine

# Copy certs folder
COPY /certs /etc/nginx/certs

# Remove the default Nginx configuration file & add our configuration file
COPY /nginx.conf /etc/nginx/conf.d/default.conf

# Copy the index.html file to the Nginx html directory
COPY /index.html /usr/share/nginx/html/

EXPOSE 80-443

CMD ["nginx" , "-g" , "daemon off;"]