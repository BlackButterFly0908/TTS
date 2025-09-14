FROM python:3.11-slim

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git ffmpeg espeak-ng build-essential \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt .

# Install numpy first (required for pkuseg build)
RUN pip install --no-cache-dir numpy

# Install the rest of the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy handler
COPY handler.py .

# Default command
CMD ["python", "handler.py"]