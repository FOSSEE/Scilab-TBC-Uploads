clc
clear
//INPUT DATA
f=0.09*10^6//Frequency of Ultrasonic source in Hz
t=0.55//time in sec
v=1800//velocity of sound in water in m/s

//CALCULATION
D=(v*t)/2//Depth of sea in m
W=(v/f)//Wavelength of ultrasonic pulse in m

//OUTPUT
printf('The depth of sea is %im \n The wavelength of ultrasonic pulse is %3.2fm',D,W)
