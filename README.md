# Cheatsheet

## Tracking all remote branches of a git repo
```bash
git clone <repo url>
git checkout --detach
git fetch origin '+refs/heads/*:refs/heads/*'
git checkout my-branch
```
