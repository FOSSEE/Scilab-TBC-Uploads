
// Example 3-2, page 63

clear;clc; close;

// Given data
v=1.2; // diode voltage in volts
i=1.75; // diode current in amperes
P(1)=5;// power rating in watts

// Calculations
P(2)=v*i; // power dissipation
disp("Watts",P(2),"Power dissipation")

// Result
// As power dissipation is lower than power rating the diode will not get destroyed. 
