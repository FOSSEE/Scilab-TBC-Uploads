clc
//initialisation of variables
V= 0.5 //lit
T= 50 //C
n= 1//mole
R= 0.0821 //lit atm mole^-1
a= 4.28*10^-2 //litres mole^-1
b= 3.6 //arm mole^-2 lit^2
//CALCULATIONS
P= n*R*(273+T)/V
P1= (n*R*(T+273)/(V-n*a))-(b/V^2)
//RESULTS
printf (' Pressure = %.f atm',P)
printf (' \n Pressure using vanderwals equation= %.1f atm',P1)
