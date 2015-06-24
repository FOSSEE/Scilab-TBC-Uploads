//Ex:1.17
clc;
clear;
close;
r=100;// distance in m
Irms=32;// current in Amp
y=300*1000;// Wavelength in m
Erms=9*10^-3;// field strength in V/m
le=(Erms*y*r)/(120*3.14*Irms);// effective height of antenna in m
printf("The effective height of antenna = %f m", le);