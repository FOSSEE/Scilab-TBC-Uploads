clear;
clc;
//Example 11.20
Ro=10000000;
Co=1*10^-12;
Rb=500;
r=10000;
b=100;
f=1/(2*%pi*Ro*Co);
f=f*0.001;//KHz
printf('\nfrequency of the zero=%.2f KHz\n',f)
Req=Ro*(1+Rb/r)/(1+Rb/r+2*(1+b)*Ro/r);
printf('\nReq=%.2f Ohm\n',Req)
f=1/(2*%pi*Req*Co);
f=f*10^-9;//GHz
printf('\nfrequency of the pole=%.2f GHz\n',f)
