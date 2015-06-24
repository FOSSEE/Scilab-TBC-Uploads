//Ex:2.49
clc;
clear;
close;
Pav=100;// power density in W/m^2
E=8.85*10^-12;
V=3*10^8;// velocity in m/s
Eo=sqrt((2*Pav)/(E*V));// peak value of electric field in V/m
n=120*%pi;// efficiency
H=Eo/n;// magnetic field in AT/m
printf("The peak value of electric field = %f V/m", Eo);
printf("\n The magnetic field = %f AT/m", H);