FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && apt-get install -y bash

COPY scripts/start.sh /app/start.sh
COPY endpoint.txt /app/endpoint.txt

RUN chmod +x /app/start.sh

CMD ["/app/scripts/start.sh"]
