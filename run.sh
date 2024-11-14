# This allows access to the linux graphical user interface X11
sudo xhost +local:docker
# Compose the container
docker compose -f docker-compose.yaml up