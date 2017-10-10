// Exa 20.1

clc;
clear all;

// Given data

V1=20;// superimposed small AF voltage(V)
V2=30;//Bridge balance voltage(V)
R1=100;// Bridge arm resistor(ohms)

// Solution

RF_pwr=(V2^2-V1^2)/(4*R1);
printf('RF test power = %.2f W \n',RF_pwr);
