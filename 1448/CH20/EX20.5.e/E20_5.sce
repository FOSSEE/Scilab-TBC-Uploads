clc
//Initialization of variables
me=9.10939*10^-31 //kg
k=1.38*10^-23 //J/K
h=6.626*10^-34 //J s
p=10^5 //Pa
T=1000 //K
R=8.314 //J/K mol
I=376*10^3 //J/mol
//calculations
K=(2*%pi*me)^1.5 *(k*T)^2.5 /(p*h^3) *%e^(-I/(R*T))
//results
printf("Equilibrium constant = %.2e",K)
