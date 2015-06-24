//Ex:4.29
clc;
clear;
close;
f=10*1000;// frequency in MHz
y=300/f;// wavelength in m
D=5;// in m
BW=(140*y)/D;// beamwidth in degree
Gp=6*(D/y)^2;// gain
Gp1=10*log(Gp)/log(10);// gain in dB 
printf("The beamwidth = %f degree", BW);
printf("\n The gain in dB = %f dB", Gp1);