# our base image
FROM alpine:3.5

# Install python and pip
RUN apk add nmap

# copy files required for the app to run
COPY test.sh /opt/fw-tests/

# run the application
CMD ["/opt/fw-tests/test.sh"]
