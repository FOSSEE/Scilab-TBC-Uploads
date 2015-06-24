//Ex:4.17
clc;
clear;
close;
r=0.45;// distance in m
f=10*10^3;// frequenc in MHz
y=300/f;// wavelength in m
Wtr=8.9;
wtr=10^(Wtr/10); 
wrt=1/wtr;
D=(4*%pi*r/y)*(sqrt(wrt));// gain of the horn antenna
d=10*log(D)/log(10);// gain of the horn antenna in dB
printf("The gain of the horn antenna = %f dB", d);