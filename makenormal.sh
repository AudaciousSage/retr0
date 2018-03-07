#!/bin/bash 

#interface names
        interface=$'wlan0'
        interface1=$'wlan1'
        interface2=$'wlx7c8bca0b520e'
        interface3=$'mon0'
        interface4=$'mon1'
        interface5=$'wlan0mon'
        interface6=$'wlan1mon'

#making everthing go normal

#sevices
        sudo service NetworkManager restart
        sudo service avahi-daemon restart
        sudo service wpa_supplicant restart

#interfaces
        sudo airmon-ng stop "$interface5"
        sudo ifconfig "$interface" down
        sudo iwconfig "$interface" mode managed
        sudo ifconfig "$interface" up

~                                                                                                                                                                                 
~                                                                                                                                                                                 
~                                                         
