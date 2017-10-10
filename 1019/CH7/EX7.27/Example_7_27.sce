//Example 7.27
clear;
clc;

//Given
R=0.082;//gas constant in atm dm^3 K^-1 mol^-1
m=0.1;//molality of acid solution in mol kg^-1
T=298;//temperature in K
w1=1000;//mass of water in g

//To determine the partial molar volume and the density
V2=16.62+(1.5*1.77*sqrt(m))+(2*0.12*m);//partial molar volume in cm^3 mol^-1
V=1003+(16.62*m)+(1.77*m^(3/2))+(0.12*m^2);//total volume in cm^3
V1=(V-(m*V2))/55.55;//partial molar volume of water in cm^3 mol^-1
p1=(w1+5.85)/V;//density of te solution in g cm^-3
mprintf('The partial molar volume of water = %f cm^3 mol^-1',V1);
mprintf('\n The partial molar volume of sodium chloride = %f cm^3 mol^-1',V2);
mprintf('\n The density = %f g cm^-3',p1);
//end