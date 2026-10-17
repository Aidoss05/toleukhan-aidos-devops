FROM ubuntu:24.04

WORKDIR /app

COPY Toleukhan_Aidos_info.txt /app/info.txt
COPY config/app.conf /app/app.conf

RUN apt-get update && apt-get install -y bash \
    && rm -rf /var/lib/apt/lists/*

ENV APP_NAME=Toleukhan_Aidos_DevOps
ENV APP_VERSION=1.0

CMD ["bash", "-c", "echo 'DevOps application started'; cat /app/info.txt; echo 'Application configuration:'; cat /app/app.conf"]
