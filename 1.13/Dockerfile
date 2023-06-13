FROM golang:1.16

RUN mkdir -p /app
WORKDIR /app

COPY . .

RUN go build

ARG PORT=8080

EXPOSE ${PORT}

ENTRYPOINT ["./server"]
