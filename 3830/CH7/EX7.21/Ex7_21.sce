// Exa 7.21

clc;
clear;

// Given

// A 5-plate transducer
n = 5; // no of plates
l = 20*10^-3; // length of plate in m
b = 20*10^-3; // breadth of plate in m
d = 0.25*10^-3; // separation between plates in m

// Solution

A = l*b; // Area in mm^2
er = 1; //  Relative dielectric constant
e0 = 8.854*10^-12; // Absolute dielectric constant in F/m

S = (n-1)*e0*er*A/d^2;

printf('Sensitivity of the arrangement = %.3f * 10^-9 F/m \n',S*10^9);

// The answer provided in the textbook is wrong

