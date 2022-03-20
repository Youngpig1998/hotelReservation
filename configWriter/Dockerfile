FROM registry.access.redhat.com/ubi8/ubi-minimal:latest


COPY . /var/configFiles
COPY writer.sh /

RUN chmod 777 /writer.sh

ENTRYPOINT ["/writer.sh"]