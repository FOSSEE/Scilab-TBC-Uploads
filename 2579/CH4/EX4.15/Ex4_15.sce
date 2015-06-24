//Ex:4.15
clc;
clear;
close;
D=20;// diameter in m
r=10;// radius in m
f=6*10^3;// frequency in MHz
y=300/f;// wavelength in m
K=0.54;// illumination efficiency
A=%pi*r^2;// area in m^2
G=(4*%pi*K*A)/y^2;// antenna gain
G1=10*log(G)/log(10);// antenna gain in dB
printf("The antenna gain = %f dB", G1);