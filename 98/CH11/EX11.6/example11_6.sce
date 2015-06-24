//Chapter 11
//Example 11_6
//Page 276

clear;clc;

er=3;
l=4000;
d_in=2.5;
d_out=d_in+2*0.5;
v=33*1e3;
f=50;

c=er*l*1e-9/(41.4*log(d_out/d_in))*log(10);

printf("(i) Capacitance of the cable = %.3f uF \n\n", c*10e5);

v_ph=v/sqrt(3);
xc=1/(2*%pi*f*c);
ic=v_ph/xc;

printf("(ii) Voltage between core and sheath = %.0f V \n\n    Charging current/phase = %.2f A \n\n", v_ph, ic);

kvar=3*ic*v_ph;
printf("(iii) Total charging kVAR = %.2f*10^3 kVAR \n\n", kvar*1e-3);