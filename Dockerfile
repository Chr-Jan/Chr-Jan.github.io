FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && apt-get install -y bash

COPY scripts/run.sh /app/run.sh
COPY endpoint.txt /app/endpoint.txt

RUN chmod +x /app/run.sh

CMD ["/app/scripts/start.sh"]
