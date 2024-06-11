#!/bin/bash

   DIR_NAME="negpod_id-q1"

   if [ ! -d "$DIR_NAME" ]; then
       mkdir $DIR_NAME
   fi

   mv main.sh $DIR_NAME/
   mv students-list_1023.txt $DIR_NAME/
   mv select-emails.sh $DIR_NAME/
   mv student-emails.txt $DIR_NAME/

   echo "Files have been moved to $DIR_NAME."
