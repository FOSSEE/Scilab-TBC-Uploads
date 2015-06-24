//Ex:1.19
clc;
clear;
close;
le=61.4;// effective height in m
Irms=50;// current in amp
y=625;// wavelength in m
Rr=160*(%pi*le)^2/(y^2);// Radiation resistance of an antenna in ohm
W=(Irms^2)*Rr;// power radiated in Watt
Rt=50;// total antenna resistance in ohm
n=Rr/Rt;// efficiency
printf("The Radiation resistance of an antenna = %f ohm", Rr);
printf("\n The power radiated = %f KW", W/1000);
printf("\n The efficiency = %f %%", n*100);