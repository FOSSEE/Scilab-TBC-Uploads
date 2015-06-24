//Example 9.4.a // internal resistance of each cell
clc;
clear;
close;
n=10;// no. of cells
Rl=4;// LOAD RESISTANCE
V=12;// in volts
Va=18;// IN VOLTS
r=((Va-V)*Rl)/(n*V);// internal resistance in ohms
disp(r,"internal resistance in ohms is")
