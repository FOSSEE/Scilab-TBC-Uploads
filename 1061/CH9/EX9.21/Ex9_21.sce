//Ex:9.21
clc;
clear;
close;
n=0.85;// quantum efficiency
e=1.6*10^-19;// charge
h=6.625*10^-34;// plank constant
c=3*10^8;// speed of light in m/s
y=0.9*10^-6// wavelength in m
R=(n*e*y)/(h*c);// responsivity in A/W
Po=0.6*10^-6;// in W
Ip=R*Po;// output photo current
I=10*10^-6;// output current in A
M=I/Ip;// multiplication factor
printf("The multiplication factor =%d", M);