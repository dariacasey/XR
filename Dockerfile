FROM ubuntu:20.04.6

#will install things from the txt file
#COPY requirements.txt .
#RUN python -m pip install -r requirements.txt

RUN roslaunch hector_slam_launch tutorial.launch

RUN roslaunch rplidar_ros rplidar.launch

#will make a mkdir for the container
WORKDIR /app

#copies all from the current directory to new directory
COPY . /app






