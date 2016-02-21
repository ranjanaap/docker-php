# docker-php
Apache-PHP Dockerfile 

## Build
```bash
docker build -t base .
```

## Running
```bash
docker run -d -p 80:80 base
```
With custom `www` folder:
```bash
docker run -d -p 80:80 -v (your site's folder):/var/www/ base
```
