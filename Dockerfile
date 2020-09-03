FROM elasticsearch:7.9.0

LABEL maintainer="Marco Matarazzo <elementalstorm@gmail.com>"

ENV discovery.type single-node

ENV xpack.security.enabled false

EXPOSE 9200 9300