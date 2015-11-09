CREATE USER web WITH PASSWORD 'Password1';
CREATE DATABASE web;
GRANT ALL PRIVILEGES ON DATABASE web to web;
\connect web;
CREATE SCHEMA db_extensions;
GRANT ALL ON SCHEMA db_extensions to web;
CREATE EXTENSION pgcrypto SCHEMA db_extensions;
ALTER DATABASE web SET search_path TO public, db_extensions;

CREATE USER websecure WITH PASSWORD 'Password1';
CREATE DATABASE websecure;
GRANT ALL PRIVILEGES ON DATABASE websecure to websecure;
\connect websecure;
CREATE SCHEMA db_extensions;
GRANT ALL ON SCHEMA db_extensions to websecure;
CREATE EXTENSION pgcrypto SCHEMA db_extensions;
ALTER DATABASE websecure SET search_path TO public, db_extensions;

CREATE USER cmsstorage WITH PASSWORD 'Password1';
CREATE DATABASE cmsstorage;
GRANT ALL PRIVILEGES ON DATABASE cmsstorage to cmsstorage;
\connect cmsstorage;
CREATE SCHEMA db_extensions;
GRANT ALL ON SCHEMA db_extensions to cmsstorage;
CREATE EXTENSION pgcrypto SCHEMA db_extensions;
ALTER DATABASE cmsstorage SET search_path TO public, db_extensions;
