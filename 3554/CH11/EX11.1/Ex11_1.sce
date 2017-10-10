// Exa 11.1

clc;
clear all;

// Given data

// Wheatstone's bridge  circuit
R1=10; // k Ohms
R2=15; // k Ohms
R3=40; // k Ohms

// Solution
// From the equation (11.4) of balanced bridge we have

Rx=R2*R3/R1; // Unknown resistance Rx
printf(' The unknown resistance Rx is = %d k Ohms \n',Rx);
