clc
//initialisation of variables
T= 20 //C
v= 0.01005 //poise
N= 6*10^23 //molecules
D= 7.8*10^-7
//CALCULATIONS
M= 4*%pi*N/(3*0.75*(D*N*6*%pi*v/(8.31*10^7*(273+T)))^3)
//RESULTS
printf ('maximum molecular weight = %.f g mole^-1',M)
