FROM centos:centos8

MAINTAINER Yousef Aminian "youremail@domain.tld"

#RUN yum update -y \
RUN yum -y update --nobest
RUN yum --assumeyes install epel-release gcc
#RUN yum --assumeyes install python python-devel python-pip
RUN dnf install -y python3-pip

# We copy just the requirements.txt first to leverage Docker cache
COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN pip3 install Flask

COPY . /app

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]
