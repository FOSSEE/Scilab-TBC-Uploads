// Exa 1.5

clc;
clear;

// Given

Rm = 100; // Resistor value in Ohms
I = 10; // Current in Amp
Im = 1*10^-3; // Meter current in Amp

// Solution

Ish = I - Im;
Vm = Im * Rm; // Vm = Vsh
Vsh = Vm;
Rsh = Vsh/Ish; 

printf('The value of shunt resistance Rsh = %.2f Ohms \n',Rsh);

//The answer provided in the textbook is wrong
