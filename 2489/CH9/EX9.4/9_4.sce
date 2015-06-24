clc
//Intitalisation of variables
clear
m= 4 //gms
p= 6.4*10^-4 //atm
T= 27 //C
R= 0.082 //lit atm deg^-1 mole^-1
//CALCULATIONS
M= R*(273+T)*m/p
//RESULTS
printf ('Molecular weight of polymer = %.1e gms',M)
