FROM redhat/ubi8-minimal:latest


COPY writer.sh /

RUN chmod +x /writer.sh

ENTRYPOINT ["/writer.sh"]