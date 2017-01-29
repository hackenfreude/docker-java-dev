FROM hackenfreude/devenv:latest

RUN echo 'deb http://deb.debian.org/debian jessie-backports main' >> /etc/apt/sources.list.d/jessie-backports.list

RUN mkdir /usr/share/man/man1 # see the README... this fixes the gnarly java install symlink problem due to missing /usr/share/man

RUN apt-get update && apt-get --assume-yes install \
	openjdk-8-jdk

ADD https://www.apache.org/dist/maven/KEYS /temp/maven/

ADD http://mirrors.ocf.berkeley.edu/apache/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz /temp/maven/

ADD https://www.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz.asc /temp/maven/

RUN gpg --import /temp/maven/KEYS

RUN gpg --verify /temp/maven/apache-maven-3.3.9-bin.tar.gz.asc /temp/maven/apache-maven-3.3.9-bin.tar.gz

RUN tar --extract --gzip --file /temp/maven/apache-maven-3.3.9-bin.tar.gz --directory /opt

RUN rm --recursive /temp/maven

ENV PATH="${PATH}:/opt/apache-maven-3.3.9/bin"
