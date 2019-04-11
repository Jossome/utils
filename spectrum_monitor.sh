#!/bin/bash

while grep "200 OK" logtube > temp;
do
	if curl -s --head https://www.youtube.com > logtube; then
		echo niubi $(date +"%m/%d/%Y %H:%M:%S")
	else
		echo yangwei $(date +"%m/%d/%Y %H:%M:%S")
		echo "200 OK" > logtube
	fi
	sleep 60
done
