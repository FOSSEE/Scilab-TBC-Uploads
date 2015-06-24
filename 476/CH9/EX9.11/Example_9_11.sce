//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 11


clear;
clc;


//Given:
//Reaction: N2(g) + 3H2(g) --> 2NH3(g)
T = 500; //temperature in K
R = 8.314; //ideal gas constant

//Free energy at 500 K (J/mol K)
Fn = -177.5; //for nitrogen
Fh = -116.9; //for hydrogen
Fa = -176.9; //for ammonia

//The function (Ho at 298 K - Ho at 0 K) [J/mol]
Hn = 8669; //for nitrogen
Hh = 8468; //for hydrogen
Ha = 9920; //for methanol

//Free energy of formation at 298 K (J/mol)
Hf = -46100;

//To calculate equilibrium constant at 500 K
//Using eq. 9.53 (Page no. 414)
sum_F = (2*Fa - Fn - 3*Fh) - (2*Ha - Hn - 3*Hh)/T; //(J/mol K)
//Using eq. 9.57 (Page no.415)
Go = T*(sum_F + 2*Hf/T);
K = %e^(-Go/(R*T));

mprintf('Equilibrium constant is %f',K);

//end