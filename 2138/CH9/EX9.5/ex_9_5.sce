//Example 9.5 // emf and internal resistance of each cell
clc;
clear;
close;
n=6;// no. of cells
Rl=3;// LOAD RESISTANCE
I=2.5;// IN AMPERES
r1=9;// in ohms
I2=1.25;// om amperes
r=((r1*I2)-(Rl*I))/(n*(I-I2));// internal resistance in ohms
E=((I*(Rl+n*r))/n);// emf of each cell in volts
disp(E,"emf of each cell in volts is")
disp(r,"internal resistance of each cell in ohms")
