#!/bin/bash

DIR_NAME="negpod_id-q1"

REMOTE_USER="ec1ebc754f75"
REMOTE_HOST="ec1ebc754f75.a5efec7a.alu-cod.online"
REMOTE_PATH="/summative/0524-2024m"

if [ ! -d "$DIR_NAME" ]; then
	echo "Directory $DIR_NAME does not exist."
        exit 1
fi

scp -r $DIR_NAME ${REMOTE_USER}@${REMOTE_HOST}:${REMOTE_PATH}

if [ $? -eq 0 ]; then
       echo "Backup successful."
else
       echo "Backup failed."
fi
