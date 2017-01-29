FROM hackenfreude/devenv:latest

RUN echo 'deb http://deb.debian.org/debian jessie-backports main' >> /etc/apt/sources.list.d/jessie-backports.list

RUN mkdir /usr/share/man/man1 # see the README... this fixes the gnarly java install symlink problem due to missing /usr/share/man

RUN apt-get update && apt-get --assume-yes install \
	openjdk-8-jdk
