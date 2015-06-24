//chapter 19
//example 19.1
//page 590
clear all;
clc ;
//given
r=3;//distance from lamp in m
L=25;//luminous flux or light energy in W
E=100*L/(4*%pi*(r^2));//light intensity
A=0.25;//area in cm^2
printf("\nLight intensity =%.1f microW/cm^2",E);
totphi=E*A;
printf("\nTotal Flux =%.1f microW",totphi);




