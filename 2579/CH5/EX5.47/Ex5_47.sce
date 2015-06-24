//Ex:5.47
clc;
clear;
close;
Gt=25;// transmitter gain in dB
gt=10^(Gt/10);// transmitter gain
Gr=30;// receiver gain in dB
gr=10^(Gr/10);// receiver gain
f=1.5*1000;// frequency in MHz
R=1.5*1000;// distance in m
y=300/f;// wavelength in m
pt=200;// transmitted power in watt
pr=(pt*gt*gr)*(y/(4*%pi*R))^2;// received power in watt
printf("The received power = %f mW", pr*1000);