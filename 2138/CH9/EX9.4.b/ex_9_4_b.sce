//Example 9.4.b // current
clc;
clear;
close;
n=10;// no. of cells
Rl=4;// LOAD RESISTANCE
V=12;// in volts
Va=18;// IN VOLTS
r=((Va-V)*Rl)/(n*V);// internal resistance in ohms
Il=V/Rl;// IN AMPERES
disp(Il,"load current in amperes is")
