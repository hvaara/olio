# Cheatsheet
Your milage may vary. Set or edit variables.

## Tracking all remote branches of a git repo
```bash
git clone ${REPO_URL}
git checkout --detach
git fetch origin '+refs/heads/*:refs/heads/*'
git checkout my-branch
```

## Set up cockroachdb docker container with certs mounted
```bash
docker run -ti -d -v `pwd`/certs:/cockroach/certs --name cockroach \
  --entrypoint=/bin/bash cockroachdb/cockroach
```

## Connect to cockroachdb with certificate
```bash
./cockroach sql --certs-dir=certs/ --host ${HOSTNAME} -d ${DATABASE}
```

## Connect to cockroachdb with the postgres native client using a certificate
```bash
psql "port=26257 host=${HOSTNAME} user=${USERNAME} sslcert=./certs/client.${USERNAME}.crt sslkey=./certs/client.${USERNAME}.key sslrootcert=./certs/ca.crt sslmode=verify-ca" ${DATABASE}
```

## postgres

### List/show databases
```
\l
```

### create database
```
create database ${DATABASE_NAME}
```

### Create user
```
CREATE ROLE ${USERNAME} WITH LOGIN PASSWORD '${PASSWORD}'
```

### Grant privileges to user on a specific database
```
GRANT ALL PRIVILEGES ON DATABASE ${DATABASE} TO ${USERNAME};
```

### Connect/use database
```
\connect ${DATABASE}
```


# Links to more cheats
- [kubectl cheatsheet](https://kubernetes.io/docs/user-guide/kubectl-cheatsheet/)
