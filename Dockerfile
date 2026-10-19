FROM ubuntu:24.04

WORKDIR /app

COPY app/app.sh /app/app.sh
COPY Toleukhan_Aidos_info.txt /app/info.txt
COPY config/app.conf /app/app.conf

RUN chmod +x /app/app.sh

ENV STUDENT_NAME=Aidos \
    STUDENT_SURNAME=Toleukhan \
    STUDENT_GROUP=IT2-2309 \
    STUDENT_ID=37599

EXPOSE 8080

CMD ["/app/app.sh"]
