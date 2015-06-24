clc
//initialisation of variables
E1= 0.126 //v
E2= -1.360 //v
M= 0.02 //m
M1= 1/0.1 //m
R= 8.31 //J/mol K
T= 25 //C
F= 96500 //coloums
//CALCULATIONS
E= (E1-R*(273+T)*2.3*log10(M)/(2*F))-(E2-R*(273+T)*2.3*log10(M1)/(F))
//RESULTS
printf (' oxidation potential of copper elctrode = %.3f v',E)
