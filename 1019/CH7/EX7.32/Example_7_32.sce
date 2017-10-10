//Example 7.30
clear;
clc;

//Given
R=0.082;//gas constant in atm dm^3 K^-1 mol^-1
T=363;//temperature in K
P=734;//pressure in mm Hg
ww=27;//mass percent of water
wA=73;//mass percent of A
Pw=526;//vapour pressure of water in mm Hg

//To determine the volume of the solution
PA=P-Pw;//partial pressure of A in mm Hg
MA=(Pw*18*wA)/(ww*PA);//molar mass of A in g mol^-1
mprintf('The molar mass of A = %i g mol^-1',MA);
//end