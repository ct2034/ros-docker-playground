ARG distro
FROM ros:$distro

# make workspace
WORKDIR /
RUN mkdir -p /colcon_ws/src/diagnostics
WORKDIR /colcon_ws/src

# install colcon
RUN apt update
RUN apt install -y python3-colcon-common-extensions
RUN rosdep update
RUN if [[ "$ROS_DISTRO" =~ "kilted" ]]; then bash -c "\
  source /opt/ros/$ROS_DISTRO/setup.bash && \
  rosdep install diagnostics"; fi

WORKDIR /colcon_ws