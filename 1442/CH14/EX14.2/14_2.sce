clc
//initialisation of variables
a=552.6 //kPa m^6/kmol^2
b= 0.03402 //m^3/kmol
p= 100 //kPa
R= 8.314 //J/mol K
//CALCULATIONS
x = poly(0,"x");
vector= roots(p*x^3-a*x+2*a*b)
T= 2*a*(x-b)^2/(R*x^3)
//RESULTS