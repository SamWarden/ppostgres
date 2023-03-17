# ppostgres

This is a simple docker-compose setup for [Postgres](https://hub.docker.com/_/postgres/)

To launch Postgres server just run 

```bash
make up
```

The server will listen port `5432`. You should specify the `POSTGRES_PASSWORD` environment variable to secure the server. To configure your `psql` client to use the password to connect to the server, copy `.pgpass` to the `$HOME` directory and change `password` and `username` there

```bash
cp .pgpass ~/
```

After that, you can connect to the server by executing

```bash
psql
```

To remove container  run

```bash
make clean
```

To remove container with its volume run

```bash
make full_clean
```
