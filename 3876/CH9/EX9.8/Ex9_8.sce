//Chapter 9 Ionic Equilibria and Buffer Action

clc;
clear;

//Initialisation of Variables
Ksp= 1.4*10**-11
V= 200 //ml
M= 24.3 ///gms

//CALCULATIONS
x= (Ksp/4)**(1/3)
m= x*M*V/1000

//RESULTS
mprintf("Grams of Mg+2 present = %.1e gms per mol",m)
