// Example 2_12
clc;funcprot(0);
//Given data
H=30;// m
A=250;// sq.km
Ar=125;// Annual rainfall in cm
Tr=70/100;// Total rainfall
F_l=50/100;// Load factor
h_l=8/100;// Head loss
n_m=90/100;// Mechanical efficiency of the turbine
n_g=95/100;// Generator efficiency
rho_w=1000;// kg/m^3
g=9.81;// m/s^2

//Calculation
V=A*10^6*(Ar/100)*Tr;//Water available during the year in m^3
Q=(V)/(8760*3600);// Water flow per second in m^3/sec
Q=Q*1000;// kg/sec
n_h=(1-h_l);// Hydraulic efficiency
n_o=n_h*n_m*n_g;//The over all efficiency
P=(Q*9.81*H*n_o)/(1000);// kW
//With 50% load factor
Gc=P/F_l;// Generator capacity in kW
printf('\nThe power=%0.0f kW \nGenerator capacity=%0.1f kW',P,Gc);
// The answer provided in the textbook is wrong

