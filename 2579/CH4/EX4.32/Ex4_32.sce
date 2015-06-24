//Ex:4.32
clc;
clear;
close;
wt=1;// transmitted power
Gt=10^4;// transmitter gain
Gr=10^4;// receiver gain
f=10000;// frequency in MHz
r=30000;// range of the link in m
y=300/f;// wavelength in m
wr=wt*Gt*Gr*(y/(4*%pi*r))^2;// received power in Watt;
printf("The received power = %f uW", wr*10^6);