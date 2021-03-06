FROM talm0/texlive

RUN apt update && apt install -y gcc make m4 zip qpdf mercurial git inkscape python-pygments libreoffice iproute2 pdftk-java

COPY host-dns-chain.sh /etc/my_init.d/00-host-dns.sh
RUN chmod +x /etc/my_init.d/00-host-dns.sh

ENTRYPOINT ["/bin/bash", "/etc/my_init.d/00-host-dns.sh"]
