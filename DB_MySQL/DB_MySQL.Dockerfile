FROM mysql:5.7

ADD ./DB_Init /docker-entrypoint-initdb.d

EXPOSE 3306

CMD ["mysqld"]