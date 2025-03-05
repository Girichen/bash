#!/bin/bash

source devel/setup.bash

rosservice call /finish_trajectory 0

rosservice call /write_state "{filename: '${HOME}/map/map.pbstream'}"

rosrun cartographer_ros cartographer_pbstream_to_ros_map -map_filestem=${HOME}/catkin_ws/src/navigation/my_nav/maps/map -pbstream_filename=${HOME}/map/map.pbstream -resolution=0.03
