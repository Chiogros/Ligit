# Ligit

## What it does
Download latest website revision hosted by a git repository and Display it with lighttpd.

## How to configure
Edit `.env`:
- `REPOSITORY_HTTPS_URL`: `https://link_to_the_repository.git` (the same link you would use with `git clone`)
- `PORT`: where website will be accessible

## How to use
```Bash
docker-compose up
```
