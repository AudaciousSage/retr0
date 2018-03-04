#!/bin/bash 
 
	interface=$'wlan0'

#making everthing go normal
	airmon-ng stop "$nterface" 
	service NetworkManager restart
	service avahi-daemon restart
	service wpa_supplicant restart
