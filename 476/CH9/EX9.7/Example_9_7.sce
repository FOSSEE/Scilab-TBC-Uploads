//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 6


clear;
clc;


//Given:
T1 = 298; //temperature in K
Hf = -46100; //standard heat of formation (J/mol)
Go = -16500; //standard free energy change (J/mol)
R = 8.314; //ideal gas constant
T = 500; 
//Reaction: N2(g) + 3H2(g) --> 2NH3(g)

//To calculate the equilibrium constant at 500 K
//Using eq. 9.50 (Page no. 413)
del_Go = 2*Go;

//Using eq. 9.31 (Page no. 406)
K1 = %e^(-del_Go/(R*T1)); //equilibrium const at 298 K
Ho = 2*Hf; //standard heat of reaction

//Using eq. 9.37 (Page no. 411)
K = K1*(%e^((-Ho/R)*(1/T - 1/T1)));
mprintf('The equilibrium constant at 500 K is %f',K);

//end