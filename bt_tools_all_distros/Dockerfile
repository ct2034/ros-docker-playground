ARG DISTRO
ARG DISTROO
FROM ros:$DISTRO
# RUN echo "Building for ROS distro: $distro"

# make workspace
WORKDIR /
RUN mkdir -p /colcon_ws/src/bt_tools
RUN mkdir -p /colcon_ws/src/BehaviorTree.CPP
WORKDIR /colcon_ws/src

# set nameserver 
RUN "sh" "-c" "echo nameserver 8.8.8.8 >> /etc/resolv.conf"

# install colcon
RUN apt update
RUN apt install -y python3-colcon-common-extensions

# install dependencies
RUN apt install -y \
    ros-*-ament-mypy \
    ros-*-nav2-msgs \
    python3-matplotlib \
    python3-networkx \
    python3-pil \
    ros-*-python-qt-binding \
    ros-*-rqt-gui \
    ros-*-rqt-gui-py \
    python3-bs4 \
    python3-pygraphviz 

# RUN rosdep update
# # ENV DISTRO=$distro
# RUN rosdep install -y \
#     --rosdistro=$ROS_DISTRO  \
#     # ament-mypy \
#     # nav2-msgs \
#     python3-matplotlib \
#     python3-networkx \
#     python3-pil \
#     python-qt-binding \
#     rqt-gui \
#     rqt-gui-py \
#     python3-bs4 \
#     python3-pygraphviz 

WORKDIR /colcon_ws