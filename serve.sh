#!/bin/bash
# kill any running gollums
ps -ef | grep rackup | grep -v grep | awk '{print $2}' | xargs kill -9
# start gollum as a background process
# you can pipe output to /dev/null instead, if you don't want a log
nohup rackup -p 4567 config.ru > /var/log/gollum.log &