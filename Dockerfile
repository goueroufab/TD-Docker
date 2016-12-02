FROM centos:7

RUN 	yum -y install epel-release \
	&& yum -y install nginx less

RUN echo "daemon off;"	>> /etc/nginx/nginx.conf

RUN cp -pr /usr/share/nginx/html/index.html /usr/share/nginx/html/index_bkp.html

ADD index.html /usr/share/nginx/html/index.html

VOLUME /usr/share/nginx/html

EXPOSE 80

CMD ["nginx"]


