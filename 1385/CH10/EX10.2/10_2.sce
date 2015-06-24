clc
//initialisation of variables
E= -0.337 //v
R= 8.31 //J/mol K
T= 25 //C
F= 96500 //coloums
M= 0.12 //m
//CALCULATIONS
E1= E-(R*(273+T)*2.3*log10(M)/(2*F))
//RESULTS
printf (' oxidation potential of copper elctrode = %.3f v',E1)
