#!/bin/bash
# Battery Notification Script

# Go and get current battery capacity percent and save to the varible BatteryCapacity.
BatteryCapacity=$(cat /sys/class/power_supply/BAT0/capacity)

# Set what battery capacity percent to trigger "$(notify-send "...")".
LowLimit=10

while true;  
do
	# If the integer stored in $BatteryCapacity is less than or equal to the integer stored in $LowLimit... 
	if (( "$BatteryCapacity" <= "$LowLimit" )); 
then
		# ...Send command...
		$(notify-send "Battery Low!")

		# ...and Wait 2 minutes or 120 seconds before issuing another notification.
		sleep 120
	else 
		# Do nothing.
		continue
	fi
done 
