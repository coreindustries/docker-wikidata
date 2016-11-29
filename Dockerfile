
FROM ubuntu

RUN echo "deb http://ftp.us.debian.org/debian/ wheezy-backports main" > /etc/apt/sources.list && \
	echo "deb http://download.savannah.gnu.org/releases/wp-mirror/debian-wpmirror/ wheezy main" >> /etc/apt/sources.list

RUN apt-get update && \
	apt-get install -y gnupg-curl
	
RUN apt-get install -y wp-mirror