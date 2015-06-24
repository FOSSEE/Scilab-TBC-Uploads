//Ex:9.25
clc;
clear;
close;
h=6.625*10^-34;// plank constant
c=3*10^8;// speed of light in m/s
n=1;// quantum efficiency
e=1.602*10^-19;// charge
E=1.3*10^-19;// energy in J
y=(h*c)/E;// wavelength in m
M=18;// multiplication factor
rp=10^13;// no. of photon per sec
Po=rp*E;// output power in w
Ip=(n*Po*e)/E;// output photocurrent in A
I=M*Ip;// photocurrent in A
printf("The wavelength =%f um", y*10^6);
printf("\n The output power =%f uW", Po*10^6);
printf("\n The photocurrent =%f uA", I*10^6);