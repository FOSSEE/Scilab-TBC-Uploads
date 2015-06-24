//example 7.16

clear;
clc;

//Given:
T=1273;//Temperature[K]
h=6.26*10^-27;//Planck's constant[J.s]
k=1.381*10^-16;//Boltzmann constant[erg/K]
T=1000;//Temperature[degrees]
m=3.82*10^-23;//mass of Na [gm]
I=(1.91*10^-23)*(3.078*10^-8)^2;//moment of inertia[gm.cm2]
dE=0.73*1.602*10^-12;//[erg]
v=159.23*(3*10^10);//frequency [s-1]
R=82;//universal gas constant[cm3.atm/deg]
u=2;//symmetry number
L=6.023*10^23;//avogadro's number

//To find the equilibrium constant
p=((3.14*m*k*T)^1.5)/h/h/h;
s=R*u*h*h/L/8/3.14/3.14/I/k;
q=1-(exp(-h*v/k/T));
r=exp(-dE/k/T);
Kp=p*s*q*r;//Equilibrium constant 
printf("The equilibrium constant is %f",Kp);