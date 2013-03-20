#!/usr/bin/env fish

for i in (mysql --user=$MYSQL_URZ_MYSQL_ROOT_USER --password=$MYSQL_URZ_MYSQL_ROOT_PASSWORD --host=$MYSQL_URZ_MYSQL_ROOT_HOST -e 'show databases\G' | ack Data | ack -o 'hastuzeit')
  set -l a a6afb_$i
  echo "$a wird angelegt" 
  mysql --user=$MYSQL_ITZ_MYSQL_ROOT_USER --password=$MYSQL_ITZ_MYSQL_ROOT_PASSWORD --host=$MYSQL_ITZ_MYSQL_ROOT_HOST -e "create database $a"
end
