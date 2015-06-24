clc
//Initialization of variables
V=1.1 //V
F=9.6485*10^4 //C/mol
R=8.314 //J/K mol
T=298.15 //K
//calculations
lnK=2*F*V/(R*T)
k=%e^(lnK)
//results
printf("Equilibrium constant = %.1e",k)
