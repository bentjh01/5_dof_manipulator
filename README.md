# robot_manipulator

Version 0

This is a humble beginning for hopefully something great.

## Setup

1. Clone repo
2. Build docker image

3. Chmod the run_robot_manipulator script

```
chmod +x run_robot_manipulator_linux.sh
```

4. create docker network

```
docker network create -d bridge rb-manipulator-network
```

## Running

1. ./run\_....
2. http://localhost:8080/vnc.html

## Project Requirements

-   Model a Universal Robotics Manipulator with at least 6 DOF
-   Perform forward and inverse kinematics
-   Perform an easy pick and place task

Simulator used: Gazebo

## Plan

1. Choose a manipulator
2. Obtain URDF file
3. Set up simulation environment in Gazebo and ROS2
4. Set up movement software to do all the movement
5. Do a pick and place problem.

## To do list

-   Obtain the manipulator URDF file
-   Set up a docker environment to mess around with everything
-   Figure out how to use gazebo and ros2
-   Integrate moveit2
-   Pick and place

-   Install rviz

## Sources

-   [Universal_Robots_ROS2_Description.git](https://github.com/UniversalRobots/Universal_Robots_ROS2_Description.git)
-   [MOVEIT2](https://moveit.picknik.ai/main/index.html)
