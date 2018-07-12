FROM talm0/texlive

RUN add-apt-repository ppa:libreoffice/libreoffice-6-0
RUN apt update && apt install -y gcc make m4 zip qpdf pdftk mercurial git inkscape python-pygments libreoffice
