//A Textbook of Chemical Engineering Thermodynamics
//Chapter 9
//Chemical Reaction Equilibria
//Example 8


clear;
clc;


//Given:
R = 8.314; //ideal gas constant
T2 = 317; //temperature in K
T1 = 391; //(K)
x2 = 0.31; //mol fraction of n-butane at 317 K
x1 = 0.43; //mol fraction of iso-butane at 391 K

//To calculate standard free energy change and heat of reaction
//At 317 K
K2 = (1-x2)/x2; //equilibrium constant at 317 K
K1 = (1-x1)/x1; //equilibrium constant at 391 K

//Using eq. 9.31 (Page no. 406)
//Standard free energy change
G2 = -R*T2*log(K2); //at 317 K (J/mol)
G1 = -R*T1*log(K1); //at 391 K (J/mol)

//Using eq. 9.37 (Page no. 411)
Ho = -log(K2/K1)*R/(1/T2 - 1/T1);

mprintf('Standard free energy change of the reaction');
mprintf('\n At 317 K is %f J/mol',G2);
mprintf('\n At 391 K is %f J/mol',G1);
mprintf('\n Average value of heat of reaction is %f J/mol',Ho);

//end