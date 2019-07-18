# %Tag(FULLTEXT)%
cmake_minimum_required(VERSION 2.8.3)
project(temperature_sensor_pi)

## Find catkin and any catkin packages
find_package(catkin REQUIRED COMPONENTS 
	roscpp 
	sensor_msgs
	message_generation
	rostest
)

## Declare ROS messages and services
#add_message_files(FILES Num.msg)
#add_service_files(FILES Example.srv)

## Generate added messages and services
#	generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package()

#configure_file (
#)


## Build talker and listener
include_directories(
	${catkin_INCLUDE_DIRS}
)


add_executable(temperature_sensor_pi 
	src/temperature_sensor_pi.cpp
)

target_link_libraries(temperature_sensor_pi 
	${catkin_LIBRARIES}
)

# %EndTag(FULLTEXT)%
