#!/bin/bash 

for files in `ls -1 /storage/ISOs`
do
	sudo mount -o loop /storage/ISOs/${files} /media/
	ls -l /media  | grep -q rar
	if [ $? == 0 ]
	then
		echo $files >> ~/rar_files
	fi
	sudo umount /media
	sleep 1
	

done
