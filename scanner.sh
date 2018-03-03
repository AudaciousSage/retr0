#!/bin/bash

#interface name
	interface=$'wlan0'

#putting interface into monitor mode
	ifconfig "$interface" down
	iwconfig "$interface" mode monitor
	ifconfig "$interface" up
#killing process
	airmon-ng check kill
#scanning 
	airodump-ng "$interface"
