### postgres-for-boardleaf
A docker image for Boardleaf Commerce with PostgreSQL.

Information about this image:
* Base from postgres, and create the following 3 database
** DB name: web, user: web, password: Password1
** DB name: websecure, user: websecure, password: Password1
** DB name: cmsstorage, user: cmsstorage, password: Password1
* Install the pgcrypto extension into a schema called db_extensions.
