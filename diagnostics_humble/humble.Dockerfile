FROM ros:humble-ros-base-jammy

# make workspace
WORKDIR /
RUN mkdir -p /colcon_ws/src
WORKDIR /colcon_ws/src

# set nameserver 
RUN "sh" "-c" "echo nameserver 8.8.8.8 >> /etc/resolv.conf"

# install git
RUN apt update && apt install -y \
    git
RUN apt install -y python3-colcon-common-extensions

# clone diagnostics repo
RUN git clone \
    https://github.com/ros/diagnostics.git \
    -b humble

# build
WORKDIR /colcon_ws
RUN /bin/bash -c "source /opt/ros/humble/setup.bash && colcon build --symlink-install"

# add local_setup.sh to ros_entrypoint.sh
RUN sed -i 's/exec/source \/colcon_ws\/install\/setup.bash\nexec/g' /ros_entrypoint.sh