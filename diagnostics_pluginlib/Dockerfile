ARG ROS_VERSION
FROM ros:$ROS_VERSION
ARG ROS_VERSION
RUN apt-get update && apt-get install -y ros-$ROS_VERSION-diagnostic-aggregator
RUN mkdir -p /ws/src/xxx

RUN echo "\
    <package format=\"3\">\
    <name>xxx</name>\
    <version>0.0.1</version>\
    <description>x</description>\
    <maintainer email=\"x@x.xx\"></maintainer>\
    <license>BSD-3-clause</license>\
    <buildtool_depend>ament_cmake_auto</buildtool_depend>\
    <depend>diagnostic_aggregator</depend>\
    <export>\
    <build_type>ament_cmake</build_type>\
    </export>\
    </package>\
    " > /ws/src/xxx/package.xml

RUN echo "\
    cmake_minimum_required(VERSION 3.15)\n\
    project(xxx)\n\
    find_package(ament_cmake_auto REQUIRED)\n\
    find_package(pluginlib REQUIRED)\n\
    ament_auto_find_build_dependencies()\n\
    ament_auto_add_library(xxx_lib SHARED test.cpp)\n\
    ament_auto_package()\n\
    " > /ws/src/xxx/CMakeLists.txt

RUN touch /ws/src/xxx/test.cpp

WORKDIR /ws
RUN . /opt/ros/$ROS_VERSION/setup.sh && colcon build