
clc
//initialisation of variables
T=520//F
R=53.3
h2=10000//ft
p1=14.7//lb/in^2
//CALCULATIONS
p2=p1*(0.6974)
p2a=p1*0.6832//taking antilogs
//RESULTS
printf (' pressure assuming isothermal change= %.2f lb/in^2',p2)
printf (' \npressure assuming adiabatic change= %.2f lb/in^2',p2a)
