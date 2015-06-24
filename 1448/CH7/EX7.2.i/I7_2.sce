clc
//Initialization of variables
Gr=-3.40 //kJ/mol
R=8.314 //J/k mol
T=298 //K
//calculations
lnK=Gr*10^3/(R*T)
K=exp(lnK)
//results
printf('Equilibrium constant K= %.2f',K)
