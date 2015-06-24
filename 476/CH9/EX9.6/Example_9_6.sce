//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 6


clear;
clc;


//Given:
Go_reac = 97540; //standard free energy of formation of reactant (J/mol)
Go_pdt = 51310; //standard free energy of formation of product (J/mol)
R = 8.314; //ideal gas constant
T = 298; //temperature (K)
//Reaction: N2O4(g) --> 2NO2(g)

//To calculate equilibrium constant
//Using eq. 9.50 (Page no.413)
Go = 2*Go_pdt - Go_reac;

//Using eq. 9.31 (Page no. 406)
K = %e^(-Go/(R*T));
mprintf('The equilbrium constant %f',K);

//end