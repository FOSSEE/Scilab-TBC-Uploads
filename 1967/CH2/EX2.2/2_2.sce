clc
//initialisation of variables
clear
T= 0 //C
R= 0.0820 //lit-atm deg^-1 mol^-1
p= 400 //atm
//CALCULATIONS
V= R*(273+T)/p
//RESULTS
printf ('Volume of the ideal gas = %.4f lit mol^-1',V)
