#!/bin/sh

if cmus-remote -Q | grep 'status stopped'
then 
    echo "paused";
else 
    cmus-remote -Q | grep 'file' | awk -F/ '{print $NF}'; 
fi
