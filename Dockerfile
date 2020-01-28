FROM ubuntu:18.04

RUN apt update
RUN apt-get install netcat -y

COPY test.sh /tmp/test.sh

CMD ["/tmp/test.sh"]
