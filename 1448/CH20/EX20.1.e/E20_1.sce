clc
//Initialization of variables
E=22 //kJ/mol
R=8.214 //J/K mol
T=293 //K
//Calculations
q=1+%e^(-E*10^3 /(R*T))
//results
printf("At 20 C, partition function = %.4f",q)
