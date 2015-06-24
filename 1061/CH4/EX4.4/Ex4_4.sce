//Ex:4.4
clc;
clear;
close;
d=6;// core diameter in m
y=1.55;// wavelength in m
a=0.5;// attenuation in dB/km
v=0.4;
Pb=4.4*10^-3*d^2*y^2*a*v;// threshold power for SBS
Pr=5.9*10^-2*d^2*y*a;// threshold power for SRS
printf("The threshold power for SBS =%d mw", Pb*10^3);
printf("\n The threshold power for SRS =%f W", Pr);