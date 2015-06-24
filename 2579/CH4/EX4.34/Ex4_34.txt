//Ex:4.34
clc;
clear;
close;
G=80;// gain in dB
G1=10^(G/10);// gain
f=300;// frequency in MHz
y=300/f;// wavelength in m
D=sqrt(G1/6)*y;// the dish parameter in m
printf("The dish parameter = %f m", D);