////
//Variable Declaration
E0 = +1.10              //Std. electrode potential for Danniel cell, V
                        //Zn(s) + Cu++ ----->  Zn2+   +  Cu
T = 298.15              //V/K
F = 96485               //Faraday constant, C/mol
n = 2.
R = 8.314               //Gas constant, J/(mol.K)

//Calculations
K = exp(n*F*E0/(R*T))

//Results
printf("\n Equilibrium constant for reaction is %4.2e",K)

