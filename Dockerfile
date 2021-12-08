FROM texlive/texlive:TL2020-historic

RUN apt-get update
RUN apt-get install -y perl bibtool pandoc
COPY mdbibexport.pl /

COPY entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]