//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 17


clear;
clc;


//Given:
//Reaction: CO(g) + H2O(g) --> CO2(g) + H2(g)
//Mixture contains 1 mol CO, 1 mol H20 and 1 mol CO2 initially
K = 1; //equilibrium constant of reaction

//To calculate the fractional distillation of steam

//Mole fraction of components at equilibrium
//CO: (1-e)/3
//H2O: (1-e)/3
//CO2: (1+e)/3
//H2: e/3

//[e(1+e)]/[(1-e)^2] = K = 1
//3e-1 = 0
e = 1/3;
mprintf('Percentage conversion of steam is %f percent',e*100);

//end