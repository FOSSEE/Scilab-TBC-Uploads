//Example 7.28
clear;
clc;

//Given
R=0.082;//gas constant in atm dm^3 K^-1 mol^-1
T=298;//temperature in K
w=1;//mass of solution in kg
x1=0.531;//mole fraction of acetone
x2=0.469;//mole fraction of chloroform
M1=58;//molar mass of acetone in g mol^-1
M2=119.5;//molar mass of chloroform in g mol^-1
V1=74.166;//partial molar volume of acetone in cm^3 mol^-1
V2=80.235;//partial molar volume of chloroform in cm^3 mol^-1
//To determine the volume of the solution
V=((w*1000)*((x1*V1)+(x2*V2)))/((x1*M1)+(x2*M2));//the volume of the solution in cm^3
n=(w*1000)/((x1*M1)+(x2*M2));//total number of moles
Vm=V/n;//mean molar volume of the solution in cm^3 mol^-1
mprintf('The mean molar volume of the solution = %f cm^3 mol^-1',Vm);
//end