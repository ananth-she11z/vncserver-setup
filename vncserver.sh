#!/bin/bash

echo
echo
echo "Updating the system. Please wait..."
sleep 3
echo 
sudo apt update
clear
echo
echo "Installing Vnc4Server & Dependencies. Please wait..."
echo
echo "please select 'YES' if service restart prompt comes up."
echo
sleep 5
sudo apt -y install vnc4server
sudo apt -y install xfce4 xfce4-goodies
clear
echo
echo "Set your VNC password here..."
vncpasswd
clear
echo
echo "Starting VncServer for the first time..."
vncserver :1
sleep 3
clear
echo
echo "Now Killing VncServer......"
vncserver -kill :1
sleep 3
clear
echo
echo "Creating Config File......"
sleep 3
echo "exec /usr/bin/startxfce4 &" > ~/.vnc/xstartup
clear
echo
echo "Starting VncServer......U may edit script for higher resolution default is 800x600 :p"
vncserver :1 -geometry 800x600 -depth 24
sleep 3
clear
echo
echo
echo "Can't believe it's DONE!!!! By she11z... Happy Hacking ;)"
echo
echo


