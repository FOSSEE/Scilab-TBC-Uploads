//example 7.12

clear;
clc;

//Given:
R=1.99;//Universal gas constant [cal/K]
e=2.718;
V=22414;//volume[cm3]
L=6.023*10^23;
h=6.626*10^-27;//Planck's constant [erg.sec]
m=6.63*10^-23;//mass[gm]
k=1.381*10^-16;//Boltzmann constant[erg/K]
T=273.2;//Temperature[K]

//To find the Entropy of argon at 273K and 1 atmospheric pressure
x=V*(e^2.5);
y=L*(h^3);
z=(2*3.14*m*k*T)^1.5;
S=R*log(x*z/y);//Entropy [cal/degree/mol]
printf("The Entropy of argon at 273K and 1 atm is %f cal/degree/mol",S);