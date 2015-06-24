clc
//initialisation of variables
T= 25 //C
M= 0.08 //m
P= 1 //atm
F= 96500 //coloumbs
R= 8.31 //J/mol K
//CALCULATIONS
E= -R*(273+T)*2.3*log10(M)/F
//RESULTS
printf (' oxidation potential of hydrogen elctrode = %.4f v',E)
