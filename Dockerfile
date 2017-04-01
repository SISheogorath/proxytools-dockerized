FROM python:3-alpine

RUN apk --no-cache add git \
    && git clone https://github.com/acidvegas/proxytools.git --depth 1 /app \
    && apk del git

RUN pip install request

COPY entrypoint.sh /

ENTRYPOINT /entrypoint.sh
