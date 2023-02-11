FROM postgres:15.1

COPY sql/10_init_schema.sql /docker-entrypoint-initdb.d/10_init_db.sql
COPY sql/20_init_data.sql /docker-entrypoint-initdb.d/20_init_data.sql
COPY sql/50_example_data.sql /docker-entrypoint-initdb.d/50_example_data.sql
