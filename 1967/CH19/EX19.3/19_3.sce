clc
//initialisation of variables
clear
H= -60.15 //kcal
e= 2.924 //volt
v= 23070 //cc
T= 25 //C
Sm= 15.2 //E.U.mole^-1
Sg= 31.2 //E.U.mole^-1
//CALCULATIONS
dS= (H*1000-(-e*v))/(273.2+T)
Sk= (dS+Sm)-0.5*Sg
//RESULTS
printf ('Stanadard entropy of pottasium ion  = %.1f E.U.g ion^-1',Sk)
