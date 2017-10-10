// To determine resistances in parallel.

clc;
clear;

I=25;
V=200;
P1=1500;

// Voltage remains the same in both the coils.
// Power Equation and Ohm's Law is being incorporated.

I1=P1/V;

R1=V/I1;

I2=I-I1;

R2= V/I2;

disp('ohms',R1,'The resistance of coil 1 =')
disp('ohms',R2,'The resistance of coil 2 =')
