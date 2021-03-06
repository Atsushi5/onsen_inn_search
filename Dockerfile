FROM python:3
ENV PYTHONUNBUFFERED 1

RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app/

Run apt-get update \
    && apt-get install -y git \
    && apt-get install -y curl \
    && apt-get install -y sudo 

RUN apt-get install -y software-properties-common vim

ENV PYTHONIOENCODIND utf_8

RUN pip3 install -r requirements.txt
COPY . /app/


