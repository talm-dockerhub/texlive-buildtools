FROM talm0/texlive

RUN apt update && apt install -y gcc make m4 zip qpdf pdftk mercurial git inkscape python-pygments
