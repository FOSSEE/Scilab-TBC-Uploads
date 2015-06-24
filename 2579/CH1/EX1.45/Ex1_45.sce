//Ex:1.45
clc;
clear;
close;
le=69.96;// effective length in m
Irms=50;// current in Amp
Rt=50;// total resistance in ohm
c=3*10^8;// the speed of light in m/s
f=0.480*10^6;// frequency in Hz
y=c/f;// wavelength in m
Rr=160*%pi^2*(le/y)^2;// radiation resistance in ohm
w=Irms^2*Rr;// power radiated in Watts
n=Rr/Rt;// effeciency
printf("The radiation resistance = %f ohm", Rr);
printf("\n The power radiated = %f kW", w/1000);
printf("\n The effeciency = %f %%", n*100);