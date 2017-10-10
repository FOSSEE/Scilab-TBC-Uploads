// Example 10_15
clc;clear;funcprot(0);
//Given data
T=20;// °C
L=1.8;// Length in m
w=0.50;// Width in m
U=10;// Velocity of the flow in m/s
delta_1=4.2/100;// Boundary layer thickness 1 in m
delta_2=7.7/100;// Boundary layer thickness 2 in m
nu=1.516*10^-5;// m^2/s
rho=1.204;// kg/m3

// Calculation
F_d=(w*rho*U^2)*(4/45)*(delta_2-delta_1);// Drag force in N
printf('\nThe total skin friction drag force=%0.2f N',F_d);
