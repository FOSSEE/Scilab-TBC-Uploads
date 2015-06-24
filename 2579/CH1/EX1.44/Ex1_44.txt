//Ex:1.44
clc;
clear;
close;
c=3*10^8;// the speed of light in m/s
Irms=450;// current in Amp
dl=100;// effective length in m
f=40*10^3;// frequency in Hz
y=c/f;// wavelength in m
w=80*%pi^2*Irms^2*(dl/y)^2;// power radiated in Watts
Rr=0.14;// radiation resistance in ohm
Rt=1.12;// total resistance in ohm
n=Rr/Rt;// effeciency
printf("The power radiated = %f kW", w/1000);
printf("\n The effeciency = %f %%", n*100);