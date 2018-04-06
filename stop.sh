#!/bin/sh
#NOWT=$(date +"%T")
#NOW=$(date +"%F")
#FILE="mysql/backup/mydb-backup-$NOW-$NOWT.sql"
#rm -f mysql/initdb/*
#rm -f nginx/log/*
#docker exec lemp_mysql /usr/bin/mysqldump -u root --password=rootpasswd --databases mydb --default-character-set=utf8mb4 > mysql/initdb/mydb-backup.sql
#cp mysql/initdb/mydb-backup.sql $FILE
docker-compose down
#rm -rf mysql/data