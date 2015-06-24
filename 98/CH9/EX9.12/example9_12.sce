//Chapter 9
//Example 9_12
//Page 225

clear;clc;

r=1.25/2;
d=200;
e0=8.854*1e-12;
c=2*%pi*e0/log(d/r);
printf("Capacitance of the line = %.4f uF/km \n", c*1e9);
