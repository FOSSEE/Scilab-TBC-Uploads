clc
//initialisation of variables
clear
p= 400 //atm
T= 273 //K
R= 0.0820 //lit-atm deg^-1 mol^-1
k= 1.27
//CALCULATIONS
V= k*R*T/p
//RESULTS
printf ('Volume of the ideal gas = %.4f lit mol^-1',V)
