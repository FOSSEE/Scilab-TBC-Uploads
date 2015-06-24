//Chapter 11
//Example 11_4
//Page 275

clear;clc;

er=4;
l=1000;
d_out=1.8;
d_in=1;

c=er*l*1e-9/41.4/log10(d_out/d_in)/10;

printf("Capacitance of the cable = %.3f uF \n\n", c*10e6);
