//Ex:4.21
clc;
clear;
close;
r=5000;// in m
F=1.9;// propagation factor
f=150;// frequenc in MHz
y=300/f;// wavelength in m
wr=2*10^-3;// receiving power in watt
wt=25;// transmitting power in watt
D=(4*%pi*r/(2*F))*(sqrt(wr/wt));// directivities of these antenna
printf("The directivity of antenna = %f", D);