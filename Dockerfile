FROM perl:latest

RUN apt-get -y update && apt-get -y upgrade && apt-get -y install btrfs-progs mbuffer && mkdir /etc/btrbk

COPY btrbk/btrbk /usr/local/bin

CMD ["/usr/local/bin/btrbk", "-q", "run"]
