#!/bin/bash

echo nohup python3 JoiSmartApp.py
nohup python3 JoiSmartApp.py &> joiSmartApp.log &

pid=`ps aux | grep "JoiSmartApp.py" | awk '{ print $2 }'`
if [ -n "$pid" ]; then
    echo $pid
fi

