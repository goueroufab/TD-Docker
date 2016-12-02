FROM centos:7

RUN 	yum -y install epel-release \
	&& yum -y install nginx wget

EXPOSE 80

CMD [nginx -g 'daemon off;']


