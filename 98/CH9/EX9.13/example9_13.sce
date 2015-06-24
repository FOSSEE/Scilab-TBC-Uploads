//Chapter 9
//Example 9_13
//Page 225

clear;clc;

v=66*1e3;
f=50;
d1=2;
d2=2.5;
d3=4.5;
d=282;
r=1.25/2;

e0=8.854*1e-12;
c=2*%pi*e0/log(d/r);
printf("(i) Line to nuetral Capacitance for 100km line = %.4f uF \n\n", c*1000*1e8);

ic=v/sqrt(3)*(2*%pi*f*c*100);
printf("(ii) Charging current per phase = %.2f A \n\n", ic*1000);
