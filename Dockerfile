FROM ubuntu:14.04
COPY . amazon-dash
RUN apt-get update 
RUN apt-get install -y python-pip libyaml-dev libpython-dev
WORKDIR amazon-dash
RUN pip install -r py2-requirements.txt 
RUN python setup.py build && python setup.py install
WORKDIR /dash-config
