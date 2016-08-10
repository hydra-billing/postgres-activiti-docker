#!/bin/bash

psql -U postgres <<- EOSQL
    CREATE USER activiti WITH password 'activiti';
    CREATE DATABASE activiti;
    GRANT ALL PRIVILEGES ON DATABASE activiti TO activiti;
EOSQL
