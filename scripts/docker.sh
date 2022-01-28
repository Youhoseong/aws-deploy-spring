# Build N Run DB Container
# 2020. 09. 18 Zini

docker_username="youhoseong"
image_name="deploy-test"
version="latest"
port=8080
container_name="test-api"

echo "## Automation docker run ##"

echo "=> docker running stop"
sudo docker stop ${container_name}

echo "=> docker container rm"
sudo docker rm -f ${container_name}

# remove image
echo "=> Remove previous image..."
sudo docker rmi -f ${docker_username}/${image_name}:${version}

# new-build/re-build docker image
echo "=> pull new image..."
sudo docker pull ${docker_username}/${image_name}:${version}

# Run container
echo "=> Run container..."
sudo docker run -d -p ${port}:${port} --name ${container_name} ${docker_username}/${image_name}:${version}