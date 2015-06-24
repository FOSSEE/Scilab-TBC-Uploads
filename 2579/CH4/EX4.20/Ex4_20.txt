//Ex:4.20
clc;
clear;
close;
y=0.1;// wavelength in m
GP=1000;// power gain
D=y*(sqrt(GP/6));// diameter of the mouth in m
HPBW=(70*y)/D;// half power beamwidth in degree
printf("The diameter of the mouth = %f meter", D);
printf("\n The half power beamwidth of the antenna = %f degree", HPBW);