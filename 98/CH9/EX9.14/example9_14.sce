//Chapter 9
//Example 9_14
//Page 225

clear;clc;

l=100;
f=50;
d=250;
r=2/2;
e0=8.854*1e-12;
c=2*%pi*e0/log(d/r);
printf("Capacitance of the line = %.4f*10^-9 F/km \n\n", c*1e9*1000);
printf("Capacitance of 100km line = %.4f uF/phase \n\n", c*1000*1e8);
