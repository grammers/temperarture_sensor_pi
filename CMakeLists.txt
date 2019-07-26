# %Tag(FULLTEXT)%
cmake_minimum_required(VERSION 2.8.3)
project(temperature_sensor_pi)

set(EXECUTABLE_OUTPUT_PATH "bin")

set(PROJECT_LINK_LIBS libarrowhead_cpp.so)
link_directories(/usr/local/lib/)

add_executable(temperature_sensor_pi
	src/temperature_sensor_pi.cpp
)

target_link_libraries(temperature_sensor_pi
	${PROJECT_LINK_LIBS}
	json-c
)

add_executable(receiver
	src/temperature_resiver.cpp
)

target_link_libraries(receiver
	${PROJECT_LINK_LIBS}
	json-c
)

# %EndTag(FULLTEXT)%
