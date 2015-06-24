// Exa 1.2
clc;
clear;
close;
format('v',5)
// Given data
V = 100;// in V
I3= 10;// in A
R1 = 10;// in ohm 
R2 = 5;// in ohm
// I1 = (V - V_A)/R1
// I2 = (V_A-0)/R2
// Using KCL at note A, I1-I2+I3=0 or
V_A= (R1*R2)/(R1+R2)*(I3+V/R1);// in V
I1 = (V - V_A)/R1;// in A
I2 = (V_A-0)/R2;// in A
disp(I1,"The current through 10 ohm resistor in A is");
disp(I2,"The current through 5 ohm resistor in A is");
disp(I3,"The current through 20 ohm resistor in A is");
