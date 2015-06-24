//Chemical Engineering Thermodynamics
//Chapter 13
//Thermodynamics in Phase Equilibria

//Example 13.2
clear;
clc;

//Given
P1 = 50*1.03*10^4;//Initial pressure in Kgf/sq m
T = 373;//Temperature in K
P2 = 1.03*10^4;//Final pressure in Kgf/sq m
V = 0.001*18;//Volume in cubic meter
R = 848;//gas constant in m Kgf/Kgmole K

//To Calculate the fugacity of liquid water
//From equation 13.13(page no 240)
del_u = (V/(R*T))*(P2-P1);//del_u = ln(f2/f1); Change in chemical potential
f1 = P2;//in Kgf/sq m
f2 = f1*(%e^del_u);
mprintf('The fugacity of the liquid water at 50 atm is %4.2e Kgf/sq m',f2);
//end