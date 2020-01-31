# ubuntu-python-minimal
FROM ubuntu:18.04

RUN apt update \
    && apt-get install -y \
       netcat \
       python-minimal \
    && apt-get autoremove \
    && apt-get clean

COPY firewall-tests.py /tmp/firewall-tests.py

CMD ["python", "-u", "/tmp/firewall-tests.py"]
