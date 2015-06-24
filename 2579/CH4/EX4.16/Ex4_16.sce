//Ex:4.16
clc;
clear;
close;
f=10*10^3;// frequency in MHz
y=300/f;// wavelength in m
D=10;// diameter in m
Gp=6*(D/y)^2;// gain of a parabolic antenna
BW=140*y/D;// beamwidth in degree
Dr=6*Gp;// directivity
A=(Dr*y^2)/(4*%pi);// capture area in m^2
printf("The gain of a parabolic antenna = %f", Gp);
printf("\n The beamwidth = %f degree", BW);
printf("\n The capture area in m^2 of a parabolic antenna = %f meter^2", A);