//Ex:5.33
clc;
clear;
close;
wt=2*10^3;// transmeter power in Watt
Gt=1.64;// directivity of transmeter
Gr=1.64;// directivity of receiver
d=200*10^3;// distance in m
f=150;// frequency in MHz
y=300/f;// wavelength in m
wr=(wt*Gt*Gr)*(y/(4*%pi*d))^2;// max received power in Watt
printf("The max received power = %f*10^-9 Watts", wr*10^9);