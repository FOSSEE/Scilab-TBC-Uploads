// To find minimum distance
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 7-1 in Page 184


clear; clc; close;

// Given data
D = 4*10^-2; //Deflection on the screen in m
G = 100*100; // Deflection factor in V/m
E_a = 2000; //Accelarating potential in V

//Calculations
// wkt. L = 2*d*E_a/(G*I_d)

//Also L/D = I_d / d
//Therefore

L = sqrt(2*D*E_a/G);
printf("The distance from the deflection plates to the oscilloscope tube screen = %0.3f m",L);

//Result
// The distance from the deflection plates to the oscilloscope tube screen = 0.126 m 

