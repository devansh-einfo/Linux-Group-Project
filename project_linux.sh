#!/bin/bash
echo "...........Linux Project Done by Group-2........"

echo ""

read -p "enter extention that you want to search:" extention
echo "....................................................."
read -p "enter your linux username:" usr
echo "....................................................."

if [ $UID  -eq  0 ]
then
  find /home/$usr/ -name "*.$extention" | cut -c 13-23 | uniq> /home/$usr/txt
  cat /home/$usr/txt
else
  echo "You dont have permission for searching.."
  echo ""
  echo "....................................................."
fi


