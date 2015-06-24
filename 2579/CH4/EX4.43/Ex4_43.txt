//Ex:4.43
clc;
clear;
close;
f=8*10^3;// frequency in MHz
y=300/f;// wavelength in m
BW=6;// beamwidth in degree
D=(70*y)/BW;// in m
hpbw=(58*y)/D;// the half power point beam width in degree
Ap=(6*D^2)/y^2;// power gain
Ap1=10*log(Ap)/log(10);// power gain in dB
printf("The half power point beam width = %f degree", hpbw);
printf("\n The power gain = %f", Ap);
printf("\n The power gain in dB = %f dB", Ap1);