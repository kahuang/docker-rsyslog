FROM       alpine:3.4

RUN apk --no-cache add rsyslog
COPY rsyslog.conf /etc/

VOLUME /var/run/rsyslog/dev
EXPOSE 514/tcp 514/udp

CMD ["rsyslogd", "-n"]

