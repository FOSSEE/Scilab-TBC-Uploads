//Ex:1.49
clc;
clear;
close;
c=3*10^8;// speed of the light in m/s
f=10*10^6;// frequency in Hz
y=c/f;// wavelength in m
I=1;// current in amp
l=1;// length in m
r=500*10^3;// distance in m
n=120*%pi;
Ex=(n*I*l*sin(%pi/2))/(2*r*y);// the magnitude of electric field in uV/m
Hx=(I*l*sin(%pi/2))/(2*r*y);// the magnitude of magnetic field in AT/m
Pm=(80*%pi^2*I^2*l^2)/(y^2);// the maximum power radiated in watts
Pav=(1/2)*Pm;// the average power radiated in watts
Rr=80*%pi^2*(l/y)^2;// the radiation resistance in ohm
printf("The magnitude of electric field = %f uV/m", Ex*10^6);
printf("\n The magnitude of magnetic field = %f*10^-8 AT/m", Hx*10^8);
printf("\n The maximum power radiated = %f watts", Pm);
printf("\n The average power radiated = %f watts", Pav);
printf("\n The radiation resistance = %f ohm", Rr);