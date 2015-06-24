clc
//Intitalisation of variables
clear
d= 8.9*10^-5 //g cc^-1
R= 8.31*10^7 //ergs deg^-1 mole^-1
N= 2.7*10^19 //molecules
n= 8.41*10^-5 //poise
T= 0 //C
n1= 2 //moles
//CALCULATIONS
s= sqrt(n1*d*sqrt(R*(273+T)/(%pi*n1))/(3*%pi*n*N))
//RESULTS
printf ('Collision diamter of hydrogen = %.2e cm',s)
