🛠️ DVWA Setup Guide
Table of Contents
Prerequisites

Docker Setup (Recommended)

Manual Installation

Configuration

Troubleshooting

📋 Prerequisites
Hardware: Minimum 2GB RAM, 20GB disk space

Software:

For Docker: Docker Engine

For Manual:

PHP 7.4+

MySQL 5.7+

Apache/Nginx

Web browser

🐳 Docker Setup (Recommended)
bash
# Pull and run DVWA container
docker run --rm -it -p 80:80 vulnerables/web-dvwa
Access: Open http://localhost in browser
Default Credentials:

text
Username: admin
Password: password
Docker Compose Alternative
yaml
# docker-compose.yml
version: '3'
services:
  dvwa:
    image: vulnerables/web-dvwa
    ports:
      - "80:80"
    restart: always
Run with:

bash
docker-compose up -d

