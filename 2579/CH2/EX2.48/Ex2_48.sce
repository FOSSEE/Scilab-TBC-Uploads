//Ex:2.48
clc;
clear;
close;
E=10;// peak electric field in V/m
n=120*%pi;// efficiency
H=E/n;// peak magnetic field At/m
Ppeak=E*H;// peak poynting vector in W/m^2
Pav=(E^2)/(2*n);// average poynting vector in W/m^2
printf("The peak magnetic field = %f At/m", H);
printf("\n The peak poynting vector = %f W/m^2", Ppeak);
printf("\n The average poynting vector = %f W/m^2", Pav);