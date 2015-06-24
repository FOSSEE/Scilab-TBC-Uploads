//Ex:2.46
clc;
clear;
close;
Gt=36;// the antenna gain in dB
Gt1=10^3.6;// the antenna gain
Pt=5*10^3;// transmitting power in Watt
R=25*10^3;// distance in m
Pd=(Pt*Gt1)/(4*%pi*R^2);// power density in W/cm^2
printf("The power density = %f*10^-3 W/m^2 ", Pd*1000);