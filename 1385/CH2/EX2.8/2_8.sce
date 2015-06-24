clc
//initialisation of variables
R= 8.31*10^7 //ergs mole^-1
T= 27 //C
M= 28 //gram per mole
//CALCULATIONS
c= sqrt(3*R*(273+T)/M)
//RESULTS
printf (' root-mean-square velocity = %.2e cm per sec',c)
