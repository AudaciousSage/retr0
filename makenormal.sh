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

#sevices
        sudo service NetworkManager restart
        sudo service avahi-daemon restart
        sudo service wpa_supplicant restart

#interfaces
        sudo airmon-ng stop "$interface"
        sudo ifconfig "$interface3" down
        sudo airmon-ng stop "$interface3"
        sudo ifconfig "$interface" up

~                                                                                                                                                                                 
~                                                                                                                                                                                 
~                                                         
