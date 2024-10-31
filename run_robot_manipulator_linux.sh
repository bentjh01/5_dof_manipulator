#!/bin/sh

container_name="rb_manipulator"

if [ "$(docker ps -aq -f status=running -f name=${container_name})" ]
then
	echo "Container is Running. Starting new session."
	docker exec -it ${container_name} bash 
else
    echo "Starting new container."

    xhost + rb-manipulator-network

    docker run -it --rm \
    --name ${container_name} \
    -h ${container_name} \
    --network=rb-manipulator-network \
    --volume="$(pwd)/ros2_ws":"/root/ros2_ws" \
    btsr:manipulator-rolling

    xhost - rb-manipulator-network

fi
