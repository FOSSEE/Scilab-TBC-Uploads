//Chapter 9
//Example 9_11
//Page 224

clear;clc;

r=1;
d=300;
e0=8.854*1e-12;
c=%pi*e0/log(d/r);
printf("Capacitance of the line = %.4f*10^-2 uF/km", c*1000*1e8);