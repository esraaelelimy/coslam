#!/bin/sh
xterm  -e "cd $(pwd)/../..; source ~/catkin_ws/devel/setup.bash ; roslaunch coslam one_turtle.launch " &
sleep 5

xterm  -e "cd $(pwd)/../..; source ~/catkin_ws/devel/setup.bash ;   roslaunch coslam one_amcl.launch  " &
sleep 5


xterm  -e "cd $(pwd)/../..; source ~/catkin_ws/devel/setup.bash ; roslaunch coslam rviz_nav.launch " &



