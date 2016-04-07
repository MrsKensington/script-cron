FROM centos:latest
MAINTAINER docker@mikeditum.co.uk

RUN yum -y install \
	cronie \
	php-bcmath \
	php-cli  \
	php-common \
	php-dba \
	php-devel \
	php-embedded \
	php-enchant \
	php-fpm \
	php-gd \
	php-intl \
	php-ldap \
	php-mbstring \
	php-mysql \
	php-odbc \
	php-pdo \
	php-pecl-memcache \
	php-pgsql \
	php-process \
	php-pspell \
	php-recode \
	php-snmp \
	php-soap \
	php-xml \
	php-xmlrpc \
	ruby \
	golang

RUN mkdir -p /scripts
RUN mkdir -p /data

VOLUME ["/etc/cron.d", "/data", "/scripts"]


# Run the command on container startup
CMD crond
