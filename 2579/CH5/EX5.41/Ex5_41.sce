//Ex:5.41
clc;
clear;
close;
f=500/1000;// frequency in MHz
A=1;// area in m^2
y=300/f;// wavelength in m
Vrms=2/1000;// potential difference in Volt
N=10;// no. of turns
Erms=(Vrms*y)/(2*%pi*A*N);// field strength in v/m
printf("The field strength = %f mV/m", Erms*1000);