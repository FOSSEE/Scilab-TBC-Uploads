//Example 7.30
clear;
clc;

//Given
R=0.082;//gas constant in atm dm^3 K^-1 mol^-1
T=298;//temperature in K
x1=0.5;//mole fraction of chloroform
x2=0.5;//mole fraction of p-xylene

//To determine the volume of the solution
V=x1*x2*(0.585+(0.085*(x1-x2))-(0.165*((x1-x2)^2)));;//the volume of the solution in cm^3 mol^-1
delV2=0.585+0.085-0.165;//in cm^3 mol^-1
delV1=0.585-0.085-0.165;//in cm^3 mol^-1
mprintf('The mean molar volume of the solution = %f cm^3 mol^-1',V);
mprintf('\n delV1 = %f cm^3 mol^-1',delV1);
mprintf('\n delV2 = %f cm^3 mol^-1',delV2);
//end