//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 10


clear;
clc;


//Given:
//Reaction: CO(g) + 2H2(g) --> CH3OH(g)
T = 600; //temperature in K
R = 8.314; //ideal gas constant

//Gibbs free energy at 600 K (J/mol K)
Gc = -203.81; //for CO
Gh = -136.39; //for hydrogen
Gm = -249.83; //for methanol

//Heats of formation at 298 K (J/mol)
Hc = -110500; //for CO
Hm = -200700; //for methanol

//To calculate equilibrium constant at 600 K
Go = T*((Gm-Gc-(2*Gh)) + (1/T)*(Hm-Hc));
//Using eq. 9.31 (Page no. 406)
K = %e^(-Go/(R*T));
mprintf('Equilibrium constant is %4.3e',K);

//end