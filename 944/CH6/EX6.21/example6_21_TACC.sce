//example 6.21

clear;
clc;

//Given:
R=8.314;//Universal gas constant[J/K/mol]
T=298;//Temperature[K]
F=96500;//Faraday's constant
Eo=0.98;//Standard e.m.f of the cell[Volts]
E=1.16;//e.m.f of the cell[Volts]
m=0.01;

//To find the mean activity coefficient of ZnCl2 solution
a=R*T;
b=2*F;
x=a/b;
Y=exp((Eo-E-(x*log(4*m*m*m)))/(3*x));//mean activity coefficient
printf("The mean activity coefficient is %f",Y);