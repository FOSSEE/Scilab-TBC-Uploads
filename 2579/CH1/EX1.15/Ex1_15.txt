//Ex:1.15
clc;
clear;
close;
Irms=10;// rms value of current in amp
// Erms=(120*pi*Irms*le)/y*r, where y= wavelength
// Erms=(120*pi*10*(3y/2))/y*r=1200*pi*3/2*r=1800*pi/r V/m
// now, Erms1=120*pi*Irms1*5y/(8*y*r)=75*pi*Irms1/r
// now equate these two Erms, we have
// 1800*pi/r=75*pi*Irms1/r i.e., Irms1=1800/75
Irms1=1800/75;// antenna current in amp
printf("The antenna current = %d amp", Irms1);