// To determine Emitter source voltage of UJT
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 8-11 in page 391

clear; clc; close;

// Given Data
Re=1*10^3; // Emitter Resistance of UJT in ohm
Iv=5*10^-3; // Valley current of UJT in A
Vv=2; // Valley voltage of UJT in V

// Calculations
Ve=Vv;
Ie=Iv; 
Vee=(Ie*Re)+Ve;

printf("The value of Emitter source voltage of UJT for turn-off is %0.2f V",Vee);

// Results
// The value of Emitter source voltage of UJT for turn-off is 7 V