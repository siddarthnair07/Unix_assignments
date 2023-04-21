#!/bin/bash
#Scripts that delete all files in current directory with 0 byte

for i in *; do   #You can also use path for eg-/home/nupur/work/* instead of *
    if [[ -f $i ]]; then
        if [[ ! -s $i ]]; then
            echo "$i is an empty file and deleting now..."
            rm $i
        fi
    elif [[ -d "$i" ]]; then
        echo "$i is a directory"
    else
        echo "$i is neither a file or directory"	      
    fi
done