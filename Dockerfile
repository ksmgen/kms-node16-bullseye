# Description: Dockerfile for Node.js 16 with necessary packages for Debian-based image
FROM node:16-bullseye-slim

# Install necessary packages for Debian-based image
RUN apt-get update && apt-get install -y \
    git \
    bash \
    curl \
    wget \
    nano \
    python3 \
    make \
    g++ \
    libcairo2-dev \
    libpango1.0-dev \
    libpng-dev \
    libjpeg-dev \
    libgif-dev \
    librsvg2-dev \
    tzdata \
    # Clean up to reduce image size
    && rm -rf /var/lib/apt/lists/*

# Set timezone
RUN cp /usr/share/zoneinfo/Asia/Jakarta /etc/localtime && \
    echo "Asia/Jakarta" > /etc/timezone

# Set working directory
WORKDIR /var/www