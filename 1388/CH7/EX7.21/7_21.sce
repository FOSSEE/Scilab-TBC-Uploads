clc
//initialisation of variables
E= -0.0029 //volts
V= 0.1 //volts
V1= 0.05 //volts
f= 0.05916 //J/mol coloumb
T= 25 //C
F= 96500 //coloumb
R= 8.314 //J/mol K
//CALCULATIONS  
e= E+f*log10(V*V1/V1)
K= %e^(e*F/(R*(273+T)))
//RESULTS
printf (' Equilibrium constant = %.1e ',K)
