//  Exa 3.1

clc;
clear all;

// Given data

Rm= 100; // Internal resistance in Ohm's
Im= 1; // Full scale deflecfion current in milliAmpere
I= 100; // Total current in milli Ampere

// Solution

Rsh= (Im*Rm)/(I-Im); // Shunt resistance 
printf('The value of shunt resistance = %.2f  Ohm \n', Rsh);

