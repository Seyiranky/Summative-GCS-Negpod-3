#!/bin/bash

   awk -F, '{print $1}' students-list_1023.txt > student-emails.txt
   echo "Emails have been extracted to student-emails.txt."

