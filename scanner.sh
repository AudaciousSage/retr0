#!/bin/bash

#interface names
	interface=$'wlan0'
        interface1=$'wlan1'
        interface2=$'wlx7c8bca0b520e'
        interface3=$'mon0'
        interface4=$'mon1'
        interface5=$'wlan0mon'
        interface6=$'wlan1mon'


#putting interface into monitor mode
	ifconfig "$interface" down
	iwconfig "$interface" mode monitor
	ifconfig "$interface" up
	
#killing process
	airmon-ng check kill
	
#scanning 
	airodump-ng "$interface"
