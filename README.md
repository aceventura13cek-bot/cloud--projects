# Cloud Projects

This repository contains my cloud and DevOps learning projects.

## Project 1 - Docker Portfolio Website

### Technologies Used

- AWS EC2
- Linux
- Docker
- Nginx
- Git
- GitHub

### Deployment Steps

Build image:

```bash
docker build -t alex-portfolio .
```

Run container:

```bash
docker run -d -p 8080:80 alex-portfolio
```

### What I Learned

- Docker Images
- Docker Containers
- Port Mapping
- AWS EC2
- Git Basics
- GitHub Workflow
