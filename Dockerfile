FROM talm0/texlive

RUN add-apt-repository -y ppa:libreoffice/libreoffice-6-0
RUN apt update && apt install -y gcc make m4 zip qpdf pdftk mercurial git inkscape python-pygments libreoffice iproute2

COPY host-dns-chain.sh /etc/my_init.d/00-host-dns.sh
RUN chmod +x /etc/my_init.d/00-host-dns.sh
