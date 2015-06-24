clc
//initialisation of variables
clear
Cv= 5*4.18*10^7 //ergs deg^-1 mole^-1
T1= 25 //C
P2= 5 //atm
P1= 1 //atm
n= 2/7
//CALCULATIONS
W= Cv*(273+T1)*(1-(P2/P1)^n)
//RESULTS
printf ('Work of expansion = %.2e ergs mole^-1',W)
