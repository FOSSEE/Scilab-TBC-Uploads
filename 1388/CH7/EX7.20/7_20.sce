clc
//initialisation of variables
E= 0.84 //volts
n= 1 //electron
F= 96500 //coloumb
R= 8.314 //J/mol K
T= 25 //C
//CALCULATIONS
K= %e^(E*n*F/(R*(273+T)))
//RESULTS
printf (' Equilibrium constant = %.1e ',K)
