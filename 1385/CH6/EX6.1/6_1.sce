clc
//initialisation of variables
T= 25 //C
R= 0.0821 //li-atm per mole per degree
M= 0.5 //m
n= 2
m= 0.680
V= 1 //lit
//CALCULATIONS
P= R*(273+T)*M*n*m/V
//RESULTS
printf (' osmotic pressure= %.2f atm',P)
