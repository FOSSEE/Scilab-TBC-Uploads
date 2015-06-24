//Ex:2.31
clc;
clear;
close;
f=7.375*10^3;// frequency in MHz
y=300/f;// wavelength in m
D=2.7;// directivity
Ae=%pi*(D/2)^2*0.65;// effective aperture
G=(4*%pi/y^2)*Ae;// gain 
BW=70*y/D;// Beamwidth in A
printf("The gain = %f ", G);
printf("\n The Beamwidth = %f A", BW);