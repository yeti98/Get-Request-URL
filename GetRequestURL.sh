#!/bin/bash
echo "###################################################"
echo "#####Created By:	ddragon			  #"
echo "#####Email:		nht.d16@gmail.com	  #"
echo "#####Create on:		16/07/2018 22:17:24	  #"
echo "###################################################"
echo "Firstly, use cd command to move to the target directory which you wish to save your files."
echo "Then, write .har file name below here. Example: /home/ddragon/Desktop/Archive 18-07-16 21-21-42.har"
read file_name #file_name is the name of the .har file which created by your browser

my_arr=($(cat "$file_name" | grep url | awk '{print substr($2,2,length($2)-3)}'))

for item in ${my_arr[*]};
do
	wget $item;
done
