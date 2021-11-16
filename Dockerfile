 
FROM ubuntu:20.04

ENV TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

WORKDIR /root/

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install wget perl-tk

RUN cd /root
RUN wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
RUN tar -xzf install-tl-unx.tar.gz
RUN rm install-tl-unx.tar.gz
RUN cd $(ls -d /root/*)

RUN echo "I" | $(ls -d /root/*)/install-tl

RUN echo "export PATH=/usr/local/texlive/2021/bin/x86_64-linux${PATH:+:${PATH}}" >> ~/.bashrc
RUN echo "export INFOPATH=/usr/local/texlive/2021/texmf-dist/doc/info${INFOPATH:+:${INFOPATH}}" >> ~/.bashrc
RUN echo "export MANPATH=/usr/local/texlive/2021/texmf-dist/doc/man${MANPATH:+:${MANPATH}}" >> ~/.bashrc

RUN apt-get -y install equivs --no-install-recommends freeglut3
RUN apt-get install latexmk
RUN wget -O debian-equivs-2021-ex.txt https://www.tug.org/texlive/files/debian-equivs-2021-ex.txt

RUN equivs-build debian-equivs-2021-ex.txt
RUN dpkg -i texlive-local_2021.99999999-1_all.deb
RUN apt-get -y install -f
