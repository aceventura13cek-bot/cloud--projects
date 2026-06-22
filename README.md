# Docker Compose Nginx Deployment

A simple Docker Compose project that runs an Nginx web server 
serving a static HTML page.

## What This Does
- Runs Nginx inside a Docker container
- Serves a custom static HTML page
- Uses Docker volumes to mount local HTML files into container

## Tech Used
- Docker
- Docker Compose
- Nginx
- AWS EC2 (deployed on)

## How to Run
1. Clone this repo
2. Run:
   docker-compose up -d
3. Open browser: http://localhost:8080

## What I Learned
- Writing docker-compose.yml
- Container networking and port mapping
- Volume mounting
- Deploying on AWS EC2
