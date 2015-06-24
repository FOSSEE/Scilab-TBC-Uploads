clc
//Initialization of variables
n=5.55 //mol
T1=20 //C
T2=80 //K
Cpm=75.29 //J/K mol
//Calculations
H=n*Cpm*(T2-T1)
//results
printf('Enthalpy of the sample changes by %d kJ',H/1000.)
