//example 7.9

clear;
clc;

//Given:
V=0.001;//Volume of vessel[m3]
T=300;//Temperature [K]
k=1.381*10^-23;//Boltzmann constant[J/K]
mol.wt=32;//molecular mass of oxygen molecule
h=6.626*10^-34;//planck's constant[J.s}



//To find the Transitional partition function of an oxygen molecule confined in a 1-litre vessel at 300K
m=32*1.66*(10^-27);//mass of oxygen molecule[Kg]
x=[(2*3.14*m*k*T)^(3/2)]*V;
y=h^3;
zt=x/y;//Transitional partition function of an oxygen molecule
disp(zt,'The Transitional partition function of an oxygen molecule confined in a 1-litre vessel at 300K is')