//Ex:4.40
clc;
clear;
close;
f=6000;// frequency in MHz
y=300/f;// wavelength in m
A=%pi*100*0.54;// aperture area in m^2
G=(4*%pi*A)/y^2;// gain of the reflector antenna
G1=10*log(G)/log(10);// gain of the reflector antenna in dB
printf("The gain of the reflector antenna = %f dB", G1);