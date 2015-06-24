// Exa 2.2
clc;
clear;
close;
format('v',5)
// Given data
R1 = 5;// in ohm
Vth= 10;// in ohm
R2 = 7;// in ohm
R3=10;// in ohm
R_L = 12;// in ohm
V = 20;// in ohm
Vth = (Vth*V)/(R1+R3);// in V
Rth = R2 + ((Vth*R1)/(Vth+R1));// in ohm
// The current through 12 ohm resistor 
I = Vth/(Rth+R_L);// in A
disp(I,"The current through 12 ohm resistor in A is");
