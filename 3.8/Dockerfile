FROM node:16-alpine as builder

EXPOSE 5000

RUN mkdir -p /app
WORKDIR app

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost/api

RUN npm install && REACT_APP_BACKEND_URL=${REACT_APP_BACKEND_URL} npm run build

FROM alpine:latest

COPY --from=builder /app/build /build

RUN apk add --update npm && npm install -g serve && addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser

ENTRYPOINT ["serve", "-s", "-l", "5000", "build"]
