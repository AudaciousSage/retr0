#!/bin/bash

	interface=$'wlx7c8bca0b520e'
#putting into monitor mode
	airmon-ng start "$interface"
#killing process
	airmon-ng check kill 

#scanning 
	airodump-ng "$interface"
