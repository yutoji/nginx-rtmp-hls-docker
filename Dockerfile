FROM tiangolo/nginx-rtmp:latest

ENV LANG C.UTF-8

COPY nginx.conf /etc/nginx/nginx.conf
COPY html /usr/local/nginx/html/

EXPOSE 80 1935

CMD ["nginx", "-g", "daemon off;"]
