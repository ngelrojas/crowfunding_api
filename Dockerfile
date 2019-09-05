FROM python:3.7-alpine
MAINTAINER Angel Rojas

ENV PYTHONUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /ct_api
WORKDIR /ct_api
COPY ./ct_api /ct_api

RUN adduser -D user
USER user

