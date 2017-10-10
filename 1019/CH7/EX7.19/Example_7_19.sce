//Example 7.19
clear;
clc;

//Given
R=82;//gas constant in atm ml K^-1 mol^-1
w2=2;//mass of solute in g
M2=69000;//molecular mass of solvent in g mol^-1
T=300.15;//temperature in K
V=100;//volume of solution in ml

//To determine the osmotic pressure in cms of (i)water (ii)mercury
pi=(T*R*w2)/(M2*V);//the osmotic pressure in atm
h1=(pi*1013250)/(980.67);//the osmotic pressure in cms of (i)water
h2=pi*76;//the osmotic pressure in cms of (ii)mercury
mprintf('the osmotic pressure in cms of (i)water = %f cm',h1);
mprintf('\n the osmotic pressure in cms of (ii)mercury = %f cm',h2);
//end