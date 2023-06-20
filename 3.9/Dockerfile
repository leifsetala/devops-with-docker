FROM golang:1.16-alpine AS builder

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

RUN mkdir /app
WORKDIR /app

COPY . .

RUN CGO_ENABLED=0 go build -o server .

FROM scratch

COPY --from=builder /app/server /app/
COPY --from=builder /etc/passwd /etc/passwd
COPY --from=builder /etc/group /etc/group

WORKDIR /app

ENV REQUEST_ORIGIN=http://localhost

EXPOSE 8080

USER appuser

ENTRYPOINT ["./server"]
