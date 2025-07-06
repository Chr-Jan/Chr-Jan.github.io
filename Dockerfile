FROM ubuntu:22.04

WORKDIR /app

RUN apt-get update && apt-get install -y bash

COPY scripts/start.sh /app/start.sh
COPY scripts/endpoint.sh /app/endpoint.sh

RUN chmod +x /app/start.sh

CMD ["/app/start.sh"]
