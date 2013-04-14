#!/bin/bash
#
# This file contains login/password information for accessing the MySQL
# database and is used by all the mysql_* scripts.

# Comment these out if you need no username & password
#SOCK=/var/lib/mysql/mysql.sock

# live
#HOST=your.database.host

# development (local)
USER=zp
PASS=zpdb
HOST=localhost

OPTS=
[ ! -z "${USER}" ] && OPTS="${OPTS} -u${USER}"
[ ! -z "${PASS}" ] && OPTS="${OPTS} -p${PASS}"
[ ! -z "${HOST}" ] && OPTS="${OPTS} -h${HOST}"
[ ! -z "${SOCK}" ] && OPTS="${OPTS} -S${SOCK}"
