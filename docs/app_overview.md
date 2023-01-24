# App Overview

Persistent data storage for events, venues and movies.


## Description

A PostgreSQL database to store events, venues and movies. It can be used for CRUD operation.
Structures like tables, constraints and triggeres are pre-initialized and must not be changed.

The official PostgreSQL docker image is used: [go to Docker Hub](https://hub.docker.com/_/postgres)


## Depends & Provides

Provides a TCP socket for client applications as documented in PostgreSQL's official [documentation](https://www.postgresql.org/docs/). Default listening port is `5432`.

The database `citycult` and the schema `public` are pre-initialized.


## Configuration

* see documentation at [Docker Hub](https://hub.docker.com/_/postgres)
* see PostgreSQL's official [documentation](https://www.postgresql.org/docs/)


## Scalability & Lifecycle

* the image is not configured for High Availability, Load Balancing, and Replication
* database files must be mounted via volumes to not be lost in case of new containers


## Resources

See PostgreSQL's official [documentation](https://www.postgresql.org/docs/).


## Monitoring

Logs are written to console.
