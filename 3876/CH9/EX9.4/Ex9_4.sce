//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
K= 1.4*10**-5
T= 25 //C
V= 200 //ml
m= 3.7 //gms
m1= 4.8 //gms
M= 74 //gms
M1= 96 //gms

//CALCULATIONS
x= m*1000/(V*M)
y= m1*1000/(V*M1)
X= K*x/y

//RESULTS
mprintf("hydronium-ion concentration = %.2e mole per litre",X)
