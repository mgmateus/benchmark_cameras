#! /bin/bash

pwd=$(pwd)
directory=${pwd/'start'/'rosbag'}"/"$1

latest_file=$(ls -t "$directory" | head -1)
rosbag reindex $directory'/'$latest_file
rm -rf $directory'/'$latest_file'.orig.bag'
