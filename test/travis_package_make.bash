#!/bin/bash -xve

sudo apt-get update
sudo apt-get install libopencv-dev python-opencv

#sudo /bin/bash -c 'echo "/usr/local/lib" > /etc/ld.so.conf.d/opencv.conf'
#sudo ldconfig

#sudo apt-get install libopencv-dev
sudo apt-get install ros-indigo-cv-bridge
sudo apt-get install ros-indigo-cv-camera

#sync and make
rsync -av ./ ~/catkin_ws/src/cpimouse_vision_control/

#clone rasraspimouse_ros_2_2
cd ~/catkin_ws/src/
git clone https://github.com/citueda/rasraspimouse_ros_2_2.git

cd ~/catkin_ws
catkin_make
