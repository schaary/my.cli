#!/usr/bin/env fish

for i in (mysql --user=$MYSQL_URZ_MYSQL_ROOT_USER --password=$MYSQL_URZ_MYSQL_ROOT_PASSWORD --host=$MYSQL_URZ_MYSQL_ROOT_HOST -e 'show databases\G' | ack Data | ack -o 'ilias_prod')
  mysqldump --user=$MYSQL_URZ_MYSQL_ROOT_USER --password=$MYSQL_URZ_MYSQL_ROOT_PASSWORD --host=$MYSQL_URZ_MYSQL_ROOT_HOST $i | mysql --user=$MYSQL_ITZ_MYSQL_ROOT_USER --password=$MYSQL_ITZ_MYSQL_ROOT_PASSWORD --host=$MYSQL_ITZ_MYSQL_ROOT_HOST a6afk_$i
end
