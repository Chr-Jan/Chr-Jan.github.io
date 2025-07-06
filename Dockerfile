FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && apt-get install -y bash

COPY scripts /app/scripts
COPY endpoint.txt /app/endpoint.txt

RUN chmod +x /app/scripts/start.sh /app/scripts/endpoint.sh

CMD ["/app/scripts/start.sh"]
