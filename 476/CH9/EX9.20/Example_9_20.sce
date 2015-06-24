//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 20


clear;
clc;


//Given:
//Reaction: C2H4(g) + H2O(l) --> C2H5OH(aq)
P = 85; //pressure in bar
n_e = 0.015; //mol percent of ethanol
n_w = 0.95; //mole percent of water
n_a = 0.48; //mol percent of ethylene in vapour phase
M = 18; //molecular mass of water
fc = 0.9; //fugacity coeffecient for ethylene

//To evaluate the equilibrium constant
//K = a_c/(a_a*a_b)

m_e = n_e/(n_w*M*10^-3); //mol/kg water
a_c = m_e;
fa = fc*n_a*P; //bar
a_a = fa;

//Since mol fraction of water is close to unity, so fugacity coeffecient of water is assumed to be 1
a_b = n_w;
K = a_c/(a_a*a_b);
mprintf('The equilibrium constant is %5.4e (mol C2H4)/(kg water bar)',K);

//end