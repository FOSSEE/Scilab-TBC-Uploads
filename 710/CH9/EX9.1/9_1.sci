clc();
clear;
//To calculate the power radiated by the filament
r=0.05;                               //radius of the wire in mm
l=4;                                  //length of the wire in cm
A=2*%pi*r*l*10^-5;                     //in m^2
//According to Stephen-Boltzmann law R=e*s*(T^4)
//P=R*A
e=1;
T=3000;                                 //temperature in K
s=5.6703*10^-8;                         //s is stepfan's constant 
p=s*(T)^4*A*e
printf("The power radiated by the filament is %f W",p);