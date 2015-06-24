//Ex:1.4
clc;
clear;
close;
f=40000;// frequency in Hz
f1=0.040;// frequency in MHz
le=100;// height of antenna in m
Irms=450;// current in Amp
Rt=1.12;// total resistance in ohm
y=300/f1;// wavelength in m
Rr=(160*%pi^2*le^2)/y^2;// radiation resistance in ohm
W=Irms^2*Rr;// power radiated in Watts
n=Rr/Rt;// efficiency of the antenna
printf("The power radiated = %f KW", W/1000);
printf("\n The efficiency of the antenna = %f %%", n*100);