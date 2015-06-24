// Calculate width of Gating pulse
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 8-3 in page 377

clear; clc; close;

// Given Data
Il=4*10^-3; // Latching current of SCR in A
V=100; // DC voltage of the circuit in V
L=0.1; // Inductance of the circuit in H

// Calculations
t=(L/V)*Il;

printf("Required width of the gating pulse is %0.2e s",t);

// Results
// Required width of the gating pulse is 4 mu-s