//Ex:3.24
clc;
clear;
close;
f=300*10^6;// frequency in Hz
c=3*10^10;// the speed of light in cm/sec
y=c/f;// wavelength in cm
d=y/2;// in cm
n=4;
I=0.5;// element current in amp
Rr=73;// resistence in ohm
Prad=n*Rr*I^2;// radiated power in watt
// sinx=y/(nd)
// sinx=y/(n*y/2)=2/n
sinx=2/n;
x=asin(sinx)*(180/%pi);// in degree
dx=2*x;// the FNBW of the array in degree
printf("The radiated power = %d watt",Prad);
printf("\n The FNBW of the array = %d degree",dx);