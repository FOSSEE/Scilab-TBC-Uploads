//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 16


clear;
clc;


//Given:
//Reaction: CO(g) + H2O(g) --> CO2(g) + H2(g)
P = 1; //pressure in bar
K = 1; //equilibrium constant of reaction

//To calculate the fractional dissociation of steam
//Basis: 1 mole water vapour present in reactant stream
//Let e be the extent of reaction

//(a). CO supplied is 100% in excess of the stoichiometric requirement
//Mole fraction of components:
//CO: (2-e)/3
//H20: (1-e)/3
//CO2: e/3
//H2: e/3

//e^2/{(1-e)(2-e)] = K = 1, so
//3e-2 = 0;
e = 2/3;
mprintf('(a). The conversion of steam is %f percent',e*100);

//(b). CO supplied is only 50% of the theoretical requirement
//Mole fraction of components
//CO: (0.5-e)/1.5
//H20: (1-e)/1.5
//CO2: e/1.5
//H2: e/1.5

//e^2/[(0.5-e)(1-e)] = K = 1
//1.5e-0.5 = 1
e = 0.5/1.5;
mprintf('\n\n (b). Percentage conversion of steam is %f percent',e*100);

//end