//Example 7.20
clear;
clc;

//Given
R=82;//gas constant in atm cm^3 K^-1 mol^-1
w2=1.35;//mass of solute in g
h1=9.9;//the osmotic pressure in cm of water
T=300;//temperature in K
V=100;//volume of solution in ml

//To determine the molecular mass of the polymer
pi=(980.67*h1)/(1013250);//the osmotic pressure in atm
M2=(w2*R*T)/(pi*V);//molecular mass of the polymer in g
mprintf('The molecular mass of the polymer = %f g mol^-1',M2);
//end