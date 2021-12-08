FROM texlive/texlive:TL2020-historic

RUN apt-get update
RUN apt-get install -y perl bibtool wget
RUN wget https://github.com/jgm/pandoc/releases/download/2.16.2/pandoc-2.16.2-1-amd64.deb; \
    dpkg -i pandoc-2.16.2-1-amd64.deb;\
    rm pandoc-2.16.2-1-amd64.deb
COPY mdbibexport.pl /

COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]
