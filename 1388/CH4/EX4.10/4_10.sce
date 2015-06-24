clc
//initialisation of variables
a= 1.360 //l^2 atm mole^-1
b= 0.0317 //l mole^-1
R= 0.08205 //J/mol K
R1= 1.987 //cal/mole K
Cp= 6.9 //cal mole^-1 deg^-1
T= 273.2 //K
//CALCULATIONS
u= ((2*a/(R*T))-b)/(Cp*(R/R1))
//RESULTS
printf (' Joule thomson coefficient= %.3f atm^-1',u)
