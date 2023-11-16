FROM alpine:3.17

RUN apk add --no-cache ca-certificates bash expat curl rsync\
  && rm -rf /var/cache/apk/*

WORKDIR /app
COPY ./js ./js
RUN chmod a+xr -R /app