#!/bin/bash

	interface=$'wlan0'
	interface1=$'wlan1'
	
#putting into monitor mode
	airmon-ng start "$interface"
	
#killing process
	airmon-ng check kill 

#scanning 
	airodump-ng "$interface"
