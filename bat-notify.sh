#!/bin/bash
# Battery Notification Script

while true  
do

BatteryCapacity=`cat /sys/class/power_supply/BAT0/capacity`
LowLimit=10

	if [ $BatteryCapacity -le $LowLimit ]; then
		notify-send "Battery low!!!"
		sleep 120
	else
		continue
	fi
done 
