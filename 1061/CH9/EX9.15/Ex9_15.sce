//Ex:9.15
clc;
clear;
close;
n=0.50;// quantum efficiency
e=1.6*10^-19;// charge
h=6.626*10^-34;// plank constant
c=3*10^8;// speed of light in m/s
y=0.9*10^-6// wavelength in m
R=(n*e*y)/(h*c);// responsivity in A/W
Ip=10^-6;// mean photo current
Po=Ip/R;// received optical power in W
f=c/y;
re=(n*Po)/(h*f);
rp=re/n;// number of received photons
printf("The responsivity =%f A/W", R);
printf("\n The received optical power =%f uW", Po*10^6);
printf("\n The number of received photons =%f*10^13 photons/sec", rp/10^13);