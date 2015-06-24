clc
//initialisation of variables
M= 28 //gm
R= 8.314*10^7 //atm l/mol K
N= 6.023*10^23
T= 300 //K
s= 4*10^-8//cm
//CALCULATIONS
m= M/N
k= R/N
n= (5/16)*sqrt(%pi*m*k*T)/(%pi*s^2)
//RESULTS
printf (' viscosity = %.2e poise',n)
