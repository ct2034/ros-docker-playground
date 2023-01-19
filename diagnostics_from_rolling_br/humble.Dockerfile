FROM ros:humble

# make workspace
WORKDIR /
RUN mkdir -p /colcon_ws/src
WORKDIR /colcon_ws/src

# set nameserver 
RUN "sh" "-c" "echo nameserver 8.8.8.8 >> /etc/resolv.conf"

# install colcon
RUN apt update
RUN apt install -y python3-colcon-common-extensions

RUN mkdir -p /colcon_ws/src/diagnostics

# build
WORKDIR /colcon_ws