#!/bin/bash 
 
 #interface names
	interface=$'wlan0'
	interface1=$'wlan1'
	
#making everthing go normal
	airmon-ng stop "$nterface" 
	service NetworkManager restart
	service avahi-daemon restart
	service wpa_supplicant restart
