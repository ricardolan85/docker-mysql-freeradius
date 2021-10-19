FROM mysql:5.7

ENV MYSQL_DATABASE=radius

COPY ./schema.sql /docker-entrypoint-initdb.d/
