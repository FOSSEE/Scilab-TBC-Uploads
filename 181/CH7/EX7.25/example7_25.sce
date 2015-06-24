// Find pinch off voltage
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 7-25 in page 330

clear; clc; close;

// Given data
Idss=10; // Drain-source current in mA
Vp=-4; // Original pinch off voltage in V
Vgs=-2; // Gate-source voltage in V
gm=4; // Transcondonductance in m-mho

// Calculation
Ids=Idss*(1-(Vgs/Vp))^2;
A=(-2*Ids)/gm;
printf("Pinch off voltage Vp = %0.0f V",A);

// Result
// Vp at gm = 4 m-mho is -1V