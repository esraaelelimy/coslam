#!/bin/sh
xterm  -e "cd $(pwd)/../..; source ~/catkin_ws/devel/setup.bash ; roslaunch coslam one_turtle.launch " &
sleep 5
xterm  -e "cd $(pwd)/../..; source ~/catkin_ws/devel/setup.bash ; rosrun coslam turtlebot_teleop_key " &
sleep 2
xterm -e "cd $(pwd)/../..; source ~/catkin_ws/devel/setup.bash ; roslaunch coslam gmapping.launch  " &
