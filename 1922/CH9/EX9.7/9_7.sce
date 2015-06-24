clc
clear
//Initialization of variables
a1=0.956
y=0.014
x=0.956
M=18
z=0.475
P=8.37 //Mpa
//calculations
m=y/(x*M) *10^3
w=0.0856
phi1=-0.04
phi2=0.06
phi=10^(phi1+ w*phi2)
f=z*phi*P
K=m/(f*a1)
//results
printf("Equilibrium constant = %.3f",K)
