FROM clojure:lein-2.8.3-alpine as build
WORKDIR /app
RUN apk add --no-cache --update make
COPY Makefile project.clj /app/
RUN make lein-deps
COPY . /app
RUN make lein-build

FROM node:10.15-alpine as run
WORKDIR /app
RUN apk add --no-cache --update make && \
        adduser -D appuser && \
        mkdir -p /app && \
        chown -R appuser /app
USER appuser
COPY --from=build /app/Makefile /app/package*.json /app/
RUN make npm-install
COPY --from=build /app /app
#ENTRYPOINT ["make", "run"]  # is not supported by heroku for some reason (heroku container:push web will fail)
CMD make run
