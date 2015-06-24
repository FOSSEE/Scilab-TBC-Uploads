//A Textbook of Chemical Engineering Thermodynamics
//Chapter 1
//Introduction and Basic Concepts
//Example 5

clear;
clc;


//Given:
A = (%pi/4)*(0.1^2); //area in m^2
P = 1.01325*10^5; //pressure in N/m^2
m = 50; //mass of piston and weight in kg
g = 9.81; //acceleration due to gravity (N/m^2)


//To determine the force exerted pressure work done and change in potential energy
//(a)
Fa = P*A; //force exerted by atmosphere in N
Fp = m*g; //force exerted by piston and weight in N
F = Fp+Fa; //total force exerted in N
mprintf('Total force exerted by the atmosphere, the piston and the weight is %f N',F);

//(b)
Pg = F/A; //pressure of gas in N/m^2
mprintf('\nPressure of gas is %5.4e Pa',Pg);

//(c)
S = 0.4; //displacement of gas in m
W = F*S; //work done by gas in J
mprintf('\nWork done by gas is %f J',W);

//(d)
PE = m*g*S; //change in potential energy in J
mprintf('\nChange in potential energy is %f J',PE);

//end 