//Chapter 11
//Example 11_9
//Page 279

clear;clc;

v=11;
area=0.645;
d_out=2.18;
er=3.5;
l=1000;
f=50;

d_in=sqrt(4*area/%pi);
g_max=2*v/d_in/log(d_out/d_in);
g_min=2*v/d_out/log(d_out/d_in);

printf("(i) Maximum stress in the insulation = %.2f kV/cm \n\n", g_max);
printf("(ii) Minimum stress in the insulation = %.2f kV/cm \n\n", g_min);

c=er*l*1e-9/(41.4*log(d_out/d_in))*log(10);

printf("(iii) Capacitance of the cable = %.3f uF \n\n", c*10e5);

xc=1/(2*%pi*f*c);
ic=v*1e3/xc;

printf("(iv) Charging current = %.2f A \n\n", ic);

