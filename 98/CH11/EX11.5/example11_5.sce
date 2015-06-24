//Chapter 11
//Example 11_5
//Page 276

clear;clc;

er=4;
l=1000;
d_in=10;
d_out=10+2*7;
v=66*1e3;
f=50;

c=er*l*1e-9/(41.4*log(d_out/d_in))*log(10);

printf("Capacitance of the cable = %.3f uF \n\n", c*10e5);

v_ph=v/sqrt(3);
xc=1/(2*%pi*f*c);
ic=v_ph/xc;

printf("Voltage between core and sheath = %.0f V \n\nCharging current = %.2f A \n\n", v_ph, ic);
