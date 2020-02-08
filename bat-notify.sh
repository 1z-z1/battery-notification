#!/bin/bash
# Battery Notification Script

while true  
do

BatteryCapacity=`cat /sys/class/power_supply/BAT0/capacity`
LowLimit=10

	if [ $BatteryCapacity -le $LowLimit ]; then
		notify-send "Battery Low!!!"
		sleep 120
	else
		sleep 120
	fi
done 
