FROM ubuntu:22.04

RUN apt update && apt install -y gcc

WORKDIR /app

COPY main.c .

RUN gcc main.c -o app

CMD ["./app"]
