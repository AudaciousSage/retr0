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
	airmon-ng start "$interface"
	
#killing process
	airmon-ng check kill 

#scanning 
	airodump-ng "$interface5"
