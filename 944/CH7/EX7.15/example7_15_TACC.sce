//example 7.15

clear;
clc;

//Given:
T=298;//Temperature[K]
v=892.1*3*10^10;//frequency[sec-1]
h=6.626*10^-27;//Planck's constant [J.s]
k=1.381*10^-16;//Boltzmann constant[erg/K]
e=2.718;
R=1.998;//Universal gas constant[cal/K]
//To find the vibrational contribution to the entropy of F2 at 298K
x=h*v/(k*T);
a=R*x*e^-x/(1-e^-x);//a=E-Eo/T
b=R*log(1-e^-x);//b=G-Eo/T
S=a-b;//[cal/deg]
printf("The vibrational contribution to the entropy of F2 is %f cal/deg",S);












