//Ex:4.39
clc;
clear;
close;
G=75;// gain in dB
G1=10^(G/10);// gain
f=15000;// frequency in MHz
y=300/f;// wavelength in m
ca=(G1*y^2)/(4*%pi);// the capture area in m^2
D=sqrt(G1/6)*y;// the dish parameter in m
BWFN=(140*y)/D;// 3-dB beamwidth
printf("The capture area = %f m^2", ca);
printf("\n The 3-dB beamwidth = %f degree", BWFN);