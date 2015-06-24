// Calculate surge current & I2t ratings
// Basic Electronics
// By Debashis De
// First Edition, 2010
// Dorling Kindersley Pvt. Ltd. India
// Example 8-7 in page 379

clear; clc; close;

// Given Data
ish=3000; // half cycle surge current rating of SCR in A
f=50; // Frequency of operation of supply in Hz

// Calculations
I=ish*sqrt(2*f)/sqrt(4*f); 
I2t_rate=(I*I)/(2*f); 

printf("(a)The surge current rating of one cycle for the SCR is %0.2f A \n",I);
printf("(b)The I2t rating of one cycle for the SCR is %0.2f A^2-second \n",I2t_rate);

// Results
// (a) The surge current rating of one cycle for the SCR is 2121.32 A
// (b) The I2t rating of one cycle for the SCR is 45000 A^2-second