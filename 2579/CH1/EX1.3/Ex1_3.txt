//Ex:1.3
clc;
clear;
close;
f=10;// frequency in MHz
le=60;// height of antenna in m
y=300/f;// wavelength in m
Rr=(160*%pi^2*le^2)/y^2;// radiation resistance in ohm
printf("The radiation resistance = %f K-ohm", Rr/1000);