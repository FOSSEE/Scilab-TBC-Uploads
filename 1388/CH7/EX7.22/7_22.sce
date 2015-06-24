clc
//initialisation of variables
E= 1.0508 //volts
V= 0.3338 //volts
a= 0.0796 
a1= sqrt(0.0490)
f= 0.05916 //J/mol coloumb
//CALCULATIONS
V= E+V+f*log10(a/a1)
//RESULTS
printf (' Standard electrode poteential = %.4f volts',V)
