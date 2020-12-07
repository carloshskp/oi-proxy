FROM nginx:1.19.5-alpine

COPY nginx.conf /etc/nginx/nginx.conf
COPY upstream.conf /etc/nginx/upstream.conf
RUN mkdir -p /etc/nginx/servers
ADD servers /etc/nginx/servers/

CMD ["nginx", "-g", "daemon off;"]
