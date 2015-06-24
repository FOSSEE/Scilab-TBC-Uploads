//Ex:2.41
clc;
clear;
close;
Pt=120;// transmitting power in Watt
Pd=160*10^-6;// power density in W/cm^2
d=10*100;// distance in cm
Gt=(Pd*4*%pi*d^2)/Pt;// the antenna gain
printf("The antenna gain = %f ", Gt);