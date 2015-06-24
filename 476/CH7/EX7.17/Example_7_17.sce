//A Textbook of Chemical Engineering Thermodynamics
//Chapter 7
//Properties of Solutions
//Example 17


clear;
clc;


//Given:
//Function for enthalpy change of mixture
//H = x1*x2*(40*x1 + 20*x2)
H1_pure = 400; //enthalpy of pure liquid 1 at 298 K and 1 bar (J/mol)
H2_pure = 600; //enthalpy of pure liquid 2 (J/mol)

//To determine enthalpies at infinite dilution
//Using eq. 7.126 and 7.128 (Page no. 294)
//H1_bar = 20*(1-x1)^2 * (2x1+1)
//Using eq. 7.127 and 7.128 (Page no. 294)
//H2_bar = 40*x1^3

//For infinite dilution x1 = 0, delH1_inf = H1_bar
x1 = 0;
delH1_inf = 20*((1-x1)^2)*(2*x1+1);
H1_inf = H1_pure + delH1_inf; //(J/mol)

//For infinite dilution of 2, x1 = 1 and delH2_inf = H2_bar
x1 = 1;
delH2_inf = 40*x1^3;
H2_inf = delH2_inf + H2_pure; //(J/mol)

mprintf('Enthalpy at infinite dilution for component 1 is %i J/mol',H1_inf);
mprintf('\n Enthalpy at infinite dilution for component 2 is %i J/mol',H2_inf);

//end 