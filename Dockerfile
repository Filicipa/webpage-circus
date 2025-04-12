# FROM nginx:stable-alpine-slim
FROM nginx:alpine
COPY --chown=nginx:nginx ./web/ /usr/share/nginx/html/
# COPY --chown=nginx:nginx ./nginx_conf/default.conf /etc/nginx/conf.d/default.conf 

EXPOSE 80
CMD [ "nginx", "-g", "daemon off;" ]