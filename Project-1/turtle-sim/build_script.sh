#make a workspace first
mkdir -p ~/ros2_turtle/src
cd ~/ros2_turtle
#you can replace the workspace name `ros2_turtle` with any other name of your liking

#we will build this workspace so that its available in the root folder
colcon build
source install/setup.bash
#sourcing all the files needed to execute your code properly

#creating the package inside the workspace
cd ~/ros2_turtle/src
ros2 pkg create --build-type ament_python turtle_fun --dependencies rclpy geometry_msgs turtlesim
#in the above line of code, ros2 will create a node file inside the package which you made, here the node file is named as `turtle-fun`

#edit the node file
nano turtle_fun/turtle_fun/shapes.py
#you can change the shape to anything you want to, here it's `square`.
