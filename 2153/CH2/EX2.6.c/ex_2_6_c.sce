//Example 2.6.c : wave length of the photon emitted
clc;
clear;
close;
//given data :
format('v',9)
Z=1;//for hydrozen
n1=3;
n2=2;
m=6.626*10^-34;// mass of electron in kg
C=3*10^8;
E3=-(13.6*Z^2)/n1^2;
E2=-(13.6*Z^2)/n2^2;
del_E=E3-E2;
E=del_E*1.6*10^-19;
v=E/m;
lamda=C/v;
disp(lamda,"wavelength of the photon emitted,(m) = ")
