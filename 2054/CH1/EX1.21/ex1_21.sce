//Exa:1.21
clc;
clear;
close;
T_m=100;//Motor Torque (in Newton-meter)
T_l=30;//Load Torque (in Newton-meter)
alpha=2*%pi*10;//in angular acceleration (in rad/sec^2)
J=(T_m-T_l)/alpha;
disp(J,'Moment of inertia of drive (in Kg-m^2)')