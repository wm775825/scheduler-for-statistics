FROM debian:stretch-slim

WORKDIR /

COPY bin/scheduler-for-statistics /usr/local/bin

CMD ["scheduler-for-statistics"]
