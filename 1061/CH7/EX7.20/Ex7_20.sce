//Ex:7.20
clc;
clear;
close;
Psc=5.31*10^-9;//
Popt=98.45*10^-6;// 
L=5.99;// length in km
asc=(4.343*10^5/L)*(Psc/Popt);// scattering loss in the fiber in dB
printf("The scattering loss in the fiber =%f dB/km", asc);