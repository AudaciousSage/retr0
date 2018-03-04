#!/bin/bash 
 
 #interface names
	interface=$'wlx7c8bca0b520e'
        interface1=$'wlan1'
        interface2=$'wlan0'
        interface3=$'mon0'
        interface4=$'mon1'
        interface5=$'wlan0mon'
        interface6=$'wlan1mon'


	
#making everthing go normal
	airmon-ng stop "$nterface" 
	service NetworkManager restart
	service avahi-daemon restart
	service wpa_supplicant restart
