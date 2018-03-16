#!/bin/bash

#Logo
	figlet RETR0

#Interface Names
	interface=$'wlan0'
        interface1=$'wlan1'
        interface2=$'wlx7c8bca0b520e'
        interface3=$'mon0'
        interface4=$'mon1'
        interface5=$'wlan0mon'
        interface6=$'wlan1mon'

#Putting interface into monitor mode

	ifconfig "$interface" down
	iwconfig "$interface" mode monitor
	ifconfig "$interface" up
	
#Killing process
	airmon-ng check kill
	
#Scanning 
	airodump-ng "$interface"
