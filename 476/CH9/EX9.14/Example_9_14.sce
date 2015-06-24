//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 14


clear;
clc;


//Given:
//Reaction: CO(g) + H2O(g) --> CO2(g) + H2(g)
K = 1; //equilibrium constant for reaction

//Mole fraction of components:
//CO: (1-e)/2
//H2O: (1-e)/2
//CO2: e/2
//H2: e/2

//To calculate fractional dissociation of steam

//(a).
//(e/2)(e/2)/[(1-e)/2][(1-e)/2] = K
//Solving we get:
e = 1/2;
mprintf('(a) Fractional dissociation of steam is %i percent',e*100);

//(b). If reactant stream is diluted with 2 mol nitrogen
//Mole fraction of components
//CO: (1-e)/4
//H20: (1-e)/4
//CO2: e/4
//H2: e/4

//so, K = (e/4)(e/4)/[(1-e)/4][(1-e)/4]
//On solving we get
e = 1/2;
mprintf('\n\n (b) After dilution fractional distillation of steam is %i percent',e*100);

//end