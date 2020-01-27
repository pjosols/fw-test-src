# our base image
FROM alpine:3.5

# Install python and pip
RUN apk add --update py2-pip

# upgrade pip
RUN pip install --upgrade pip

# install Python modules needed by the Python app
COPY requirements.txt /tmp/
RUN pip install --no-cache-dir -r /tmp/requirements.txt

# copy files required for the app to run
COPY test.py /opt/fw-tests/

# run the application
CMD ["python", "/opt/fw-tests/test.py"]
