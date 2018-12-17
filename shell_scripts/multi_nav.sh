#!/bin/sh
xterm  -e "cd $(pwd)/../..; source ~/catkin_ws/devel/setup.bash ; roslaunch coslam run_multi.launch " &
sleep 5

xterm  -e "cd $(pwd)/../..; source ~/catkin_ws/devel/setup.bash ;   roslaunch coslam multi_amcl.launch  " &
sleep 5


xterm  -e "cd $(pwd)/../..; source ~/catkin_ws/devel/setup.bash ; rosrun rviz rviz -d `rospack find coslam`/rviz_configs/multi_slam.rviz " &



