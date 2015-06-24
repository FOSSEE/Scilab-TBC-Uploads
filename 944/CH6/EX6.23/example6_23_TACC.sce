//example 6.23

clear;
clc;

//Given:
T=298;//Temperature[K]
P=1;//pressure [atm]
m=0.02;//Ionic strength of HCl solution in CH3OH[mol/Kg]
E=32.6;//Di-electric constant
d=0.787;//Density[gm/cm3]

//To find the mean activity coefficient
I=0.5*(0.02*1*1+0.02*1*1);//Ionic strength of HCl solution[mol/Kg]
a=I*d;
b=(E^3)*(298^3);
x=(a/b)^0.5;
Y=10^(-1.825*1000000*1*1*x);//mean activity coefficient
printf("The mean activity coefficient is %f ",Y);









