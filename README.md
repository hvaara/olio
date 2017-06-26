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
docker run -ti -d -v `pwd`/roach:/cockroach/certs --name cockroach --entrypoint=/bin/bash cockroachdb/cockroach
```
