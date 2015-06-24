clc
//Intitalisation of variables
clear
t= 1 //sec
v= 1 //cc
T= 0 //C
p= 1 //atm
d= 8.9*10^-5 //g cc^-1
n= 8.41*10^-5 //poise
R= 8.31*10^7 //ergs deg^-1 mole^-1
M= 4 //gms
N= 6*10^23 //molecules
n1= 2 //moles
//CALCULATIONS
Z= M*(N/(v*22414))*d*R*(273+T)/(3*%pi*n1*n)
//RESULTS
printf ('Number of collisions = %.2e molecular collisions sec^-1 cc^-1',Z)
