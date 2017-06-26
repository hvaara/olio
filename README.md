# Cheatsheet

## Tracking all remote branches of a git repo
```bash
git clone <repo url>
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
./cockroach sql --certs-dir=certs/ --host <hostname> -d <database>
```
