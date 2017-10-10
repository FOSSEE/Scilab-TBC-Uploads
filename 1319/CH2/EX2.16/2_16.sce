// To determine the current in the 2 ohm resistor using superposition theorem

clc;
clear;

// Voltage Sources
V1=5;
V2=10;

// Since both Voltage sources are connected in parallel and are unequal
R1=%inf; // As seen by 5V Source
R2=%inf; // As seen by 10V Source

I1=V1/R1; // Current Drawn from 5V supply
I2=V2/R2; // Current Drawn from 10V supply

I=I1+I2; // Current through 2 ohms resistor

printf('The Current flowing in the 2 ohm resistor = %g A\n',I)
