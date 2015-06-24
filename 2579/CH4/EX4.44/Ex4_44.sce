//Ex:4.44
clc;
clear;
close;
f=3*10^3;// frequency in MHz
y=300/f;// wavelength in m
Ap=26;// power gain in dB
Ap1=10^(Ap/10);// power gain
D=sqrt((Ap1*y^2)/6);// diameter of antenna in m
hpbw=(58*y)/D;// the half power point beam width in degree
printf("The diameter of antenna = %f cm", D*100);
printf("\n The half power point beam width = %f degree", hpbw);