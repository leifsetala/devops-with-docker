FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y curl

ENTRYPOINT ["sh", "-c", "while true; do echo 'Input website:'; read website; echo 'Searching..'; sleep 1; curl http://$website; done"]

