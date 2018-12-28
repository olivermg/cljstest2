FROM clojure:lein-2.8.3-alpine

ADD . /app

RUN adduser -D appuser && \
        chown -R appuser /app && \
        apk add --no-cache --update make nodejs npm

USER appuser
WORKDIR /app

RUN make init && make lein-build

ENTRYPOINT ["make", "run"]
