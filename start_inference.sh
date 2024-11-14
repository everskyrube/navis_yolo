#!/bin/bash

sudo xhost+

# Step 1: Start the Docker Compose services
echo "Starting Docker Compose..."
docker-compose up -d  # Run in detached mode

# Get the container name from docker-compose.yml
CONTAINER_NAME=$(docker-compose ps -q navis_yolo)

# Check if the container is running
if [ -z "$CONTAINER_NAME" ]; then
    echo "Error: Container did not start. Please check the docker-compose logs."
    exit 1
fi

# Step 2: Execute the inference script inside the container
echo "Running inference script inside the container..."
docker exec -it $CONTAINER_NAME bash -c "./run_inference.sh"
