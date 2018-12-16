#!/bin/sh
xterm  -e "cd $(pwd)/../..; source ~/catkin_ws/devel/setup.bash ; roslaunch coslam multi_turtles.launch " &
sleep 5

xterm  -e "cd $(pwd)/../..; source ~/catkin_ws/devel/setup.bash ; 
            ROS_NAMESPACE=t_0 roslaunch coslam gmapping_multi.launch set_base_frame:=t_0/base_footprint set_odom_frame:=t_0/odom set_map_frame:=t_0/map"&
sleep 5

xterm  -e "cd $(pwd)/../..; source ~/catkin_ws/devel/setup.bash ;
            ROS_NAMESPACE=t_1 roslaunch coslam gmapping_multi.launch set_base_frame:=t_1/base_footprint set_odom_frame:=t_1/odom set_map_frame:=t_1/map"&
sleep 5

xterm -e "cd $(pwd)/../..; source ~/catkin_ws/devel/setup.bash ;roslaunch coslam multi_map_merge.launch" &
sleep 5

xterm -e "cd $(pwd)/../..; source ~/catkin_ws/devel/setup.bash ;rosrun rviz rviz -d `rospack find coslam`/rviz_configs/multi_slam.rviz" &
sleep 5

#rosrun map_server map_saver -f myMap



