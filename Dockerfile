FROM fedora:36

RUN dnf install -yv texlive-collection-basic

RUN dnf install -yv 'tex(everysel.sty)'
RUN dnf install -y 'tex(fontawesome.sty)'
RUN dnf install -y 'tex(roboto.sty)'
RUN dnf install -y 'tex(sourcesanspro.sty)'
RUN dnf install -y 'tex(tcolorbox.sty)'
RUN dnf install -y 'tex(parskip.sty)'
# RUN dnf install -y texlive-lh

WORKDIR /build

COPY . .

ENTRYPOINT ["bash", "build.sh"]
