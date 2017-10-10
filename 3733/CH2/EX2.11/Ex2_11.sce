// Example 2_11
clc;funcprot(0);
//Given data
V=6*10^6;// m^3
H=75;// m
F_l=0.6;// Load factor
n_g=72/100;// The over all generation efficiency
rho_w=1000;// kg/m^3
g=9.81;// m/s^2

//Calculation
P=((V)/(365*24*3600))*(((rho_w)*g*H*n_g)/(1000));// The power capacity of the plant in kW
E=P*F_l*365*24;// Energy produced in kWh
printf('\nEnergy produced=%0.0f kW',E);
// The answer provided in the textbook is wrong
