FROM nginx

COPY conf/mirror.conf /etc/nginx/conf.d/default.conf
COPY www.chiark.greenend.org.uk/~sgtatham/ usr/share/nginx/html
