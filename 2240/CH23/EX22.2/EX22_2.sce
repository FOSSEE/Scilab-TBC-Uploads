// Grob's Basic Electronics 11e
// Chapter No. 22
// Example No. 22_2
clc; clear;
// An applied dc voltage of 10 V will produce a steady-state current of 100 mA in the 100-Ohms coil. How much is the current after 0.2 s? After 1 s?

// Given data

L = 20;         // Inductor=20 Henry
R = 100;        // Resistor=100 Ohms
I = 100*10^-3;  // Steady-state current=100 mAmps

disp ('Since 0.2 sec is one time constant, I is 63% of 100 mA')
I1 = 0.63*I;
disp (I1,'The current at 0.2 sec time constant')

disp ('After 1 sec the current reaches its steady state value of 100 mAmps ')
