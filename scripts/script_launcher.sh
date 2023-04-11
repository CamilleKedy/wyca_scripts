#!/bin/bash

source /opt/ros/galactic/setup.bash && source /home/camille/elodie_ws/install/setup.bash && ros2 launch daemon_bag_test_pkg daemon_bag_record.launch.py
