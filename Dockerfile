FROM mysql:5.7

RUN  apt-get update \ 
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

ENV MYSQL_RANDOM_ROOT_PASSWORD=yes
ENV MYSQL_USER=raduser
ENV MYSQL_PASSWORD=radpass
ENV MYSQL_DATABASE=radius

WORKDIR /docker-entrypoint-initdb.d/

RUN wget https://raw.githubusercontent.com/ricardolan85/vivavox-mysql-freeradius/main/schema.sql
