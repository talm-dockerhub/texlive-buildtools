FROM phusion/baseimage

RUN apt update && apt install -y make m4 zip qpdf pdftk mercurial git inkscape texlive-full 
