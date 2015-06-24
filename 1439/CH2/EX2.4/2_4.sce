clc 
//initialisation of variables
R= 0.08205 //l-atm deg^-1 mole^-1
T= 25 //K
n= 1 //mole
V= 0.5 //lit
b= 0.04267 //lit mole^-1
a= 3.592 //lit^2 atm mol^-2
//CALCULATIONS
P= R*(273.15+T)/V
P1= (R*(273.15+T)/(V-b))-(a/V^2)
//RESULTS
printf ('pressure calculated using ideal gas law= %.1f atm',P)
printf ('\n pressure calculated using vander wals equation= %.1f atm',P1)
