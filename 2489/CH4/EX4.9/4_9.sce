clc
//Intitalisation of variables
clear
T= 25 //C
R= 8.31*10^7 //ergs deg^-1 mole^-1
M= 32 //gms
//CALCULATIONS
c= sqrt(3*R*(273+T)/M)
//RESULTS
printf ('Mean velocity of oxygen molecules = %.2e cm sec^-1',c)
