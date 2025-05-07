#!/bin/bash

pid=`ps aux | grep "JoiSmartApp.py" | awk '{ print $2 }'`
if [ -n "$pid" ]; then
    echo kill -9 $pid
    sudo kill -9 $pid &> /dev/null
fi

