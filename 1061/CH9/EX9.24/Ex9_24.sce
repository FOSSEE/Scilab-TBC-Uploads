//Ex:9.24
clc;
clear;
close;
n=0.55;// quantum efficiency
e=1.6*10^-19;// charge
h=6.626*10^-34;// plank constant
c=3*10^8;// speed of light in m/s
y=0.85*10^-6// wavelength in m
R=(n*e*y)/(h*c);// responsivity in A/W
Ip=2*10^-6;// mean photo current
Po=Ip/R;// received optical power in W
re=(n*Po*y)/(h*c);// number of received photons
printf("The responsivity =%f A/W", R);
printf("\n The received optical power =%f uW", Po*10^6);
printf("\n The number of received photons =%f*10^13 photons/sec", re/10^13);