clc
//initialisation of variables
E= -0.771 //v
R= 8.31 //J/mol K
T= 25 //C
F= 96500 //coloums
M= 0.02 //m
M1= 0.1 //m
//CALCULATIONS
E1= E-(R*(273+T)*2.3*log10(M/M1)/F)
//RESULTS
printf (' oxidation potential of copper elctrode = %.3f v',E1)
