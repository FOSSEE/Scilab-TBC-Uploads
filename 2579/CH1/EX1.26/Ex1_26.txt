//Ex:1.26
clc;
clear;
close;
l=70;// antenna height in m
le=2*l/%pi;// effective length in m
Irms=25;// current in amp
f=10;// frequency in MHz
y=300/f;// wavelength in m
r=25*10^3;// distance in m
Erms=(120*%pi*le*Irms)/(y*r);// field strength in mV/m
printf("The field strength = %d mV/m", Erms*10^3);