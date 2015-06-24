//example 7.2

clear;
clc;

//Given:
T=298;//Temperature [K]
v=6.5*10^13;//Frequency in [sec-1]
//Consider zero point energy = 0.
h=6.627*10^-34;//planck's constant[J.s]
k=1.381*10^-23;//Boltzmann constant 
N=1;//Since N=summation(gj*exp(-Ej/kT))

//To find the fraction of molecules present in vibrational level
E1=h*v;//for energy level 1[J]
E2=2*h*v;//for energy level 2[J]
x=k*T;
g1=1;
g2=1;
N1=[g1*exp(-E1/x)];//molecules present in energy level 1
N2=[g2*exp(-E2/x)];//molecules present in energy level 2
n1=N1/N;//fraction of molecules present in energy level 1
n2=N2/N;//fraction of molecules present in energy level 2
printf("The fraction of molecule  s present in energy level 1 is %f",n1);


disp(n2,'The fraction of molecules present in energy level 2 is '); 








