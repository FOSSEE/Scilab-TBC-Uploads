//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 15


clear;
clc;


//Given:
//Reaction: N2 + 3H2 --> 2NH3
K = 2*10^-4; //equilibrium constant of reaction
P = 20; //pressure in bar

//To determine conversion of nitrogen affected by argon

//Mole fraction of components
//Nitrogen: (1-e)/(6-2e)
//Hydrogen: 3(1-e)/(6-2e)
//Ammonia: 2e/(6-2e)

//[2e/(6-2e)]^2/[(1-e)/(6-2e)][3(1-e)/(6-2e)]^3 = K*P^2
//e(3-e)/(1-e)^2 = 0.3674

e = poly(0,'e');
f = 1.3674*e^2 - 3.7348*e + 0.3674;
x = roots(f);
mprintf('Percentage coversion in presence of argon is %f percent',x(2)*100);
mprintf('\n while in absence of argon is 14.48 percent'); //From example 9.13

//end