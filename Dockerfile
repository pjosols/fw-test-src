# our base image
FROM ubuntu:18.04

RUN apt update
RUN apt-get install netcat -y

# copy files required for the app to run
COPY test.sh /opt/fw-tests/

# run the application
CMD ["/opt/fw-tests/test.sh"]
