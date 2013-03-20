#!/usr/bin/env fish

mysql --user=$MYSQL_URZ_MYSQL_ROOT_USER --password=$MYSQL_URZ_MYSQL_ROOT_PASSWORD --host=$MYSQL_URZ_MYSQL_ROOT_HOST -e 'select Db from mysql.db where User = \'a6agf\'\G'
