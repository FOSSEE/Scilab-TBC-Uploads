// Exa 1.33

clc;
clear;

//Given

W = 0.005; // Weight in Kg
l = 2.4*10^-2; // Distance in m
Td = 1.05*10^-4; // Deflection torque in kg-m

// Solution

Theta = asind(Td/(W*l));
printf('Deflection torque is given by, Td = W*l*sin(theta)\n Therefore theta =  %.1f degrees \n',Theta);

