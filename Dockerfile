FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/* && rm -f /etc/nginx/conf.d/*
COPY nginx.conf /etc/nginx/conf.d/default.conf
COPY index.html /usr/share/nginx/html/index.html
EXPOSE 3000
CMD ["nginx", "-g", "daemon off;"]
