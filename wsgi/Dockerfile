FROM python:3.8.0-alpine as base

RUN apk add --no-cache --update \
    nodejs \
    nodejs-npm \
    python3 \
    python3-dev \
    py3-pip \
    && rm -rf /var/cache/apk/*

RUN npm install -g firebase-tools@latest serverless

RUN pip3 install --upgrade pip

RUN pip3 install awscli --upgrade --user --no-warn-script-locatio

FROM base as wsgi

COPY requirements.txt .

RUN pip install -r requirements.txt