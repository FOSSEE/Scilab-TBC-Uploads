//Ex:1.16
clc;
clear;
close;
r=1000;// distance in m
l=1;// length in m
Irms=5;// current in Amp
f=1;// frequency in MHz
y=300/f;// Wavelength in m
le=(2/%pi)*l;// effective length in m
Erms=(120*%pi*le*Irms)/(y*r);// field strength in V/m
printf("The field strength = %d mV/m", Erms*1000);