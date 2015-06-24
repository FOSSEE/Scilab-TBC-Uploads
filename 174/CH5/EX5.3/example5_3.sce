// To find the unknown impedence
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 5-3 in Page 111


clear; clc; close;

// Given data
// The given polar forms in textbook is represented in rect form
Z_1 = 17.36482 +%i *98.48078;
Z_2 = 250;
Z_3 = 346.4102 +%i *200;

//Calculations
//The first condition for bridge balance is Z_1*Z_4 = Z_2*Z_3
mod_Z_4 = (abs(Z_2) *abs(Z_3)/abs(Z_1));

//The second condition for bridge balance requires that sum of the phase angles of opposite arms be equal
theta_Z_4 = (atan(imag(Z_2),real(Z_2)) +atan(imag(Z_3),real(Z_3)) -atan(imag(Z_1),real(Z_1)))*180/%pi;

printf("The impedence of the unknown arm = %d ohm /_ %d deg\n",mod_Z_4,theta_Z_4);
printf("Here the magnitude of impedence is 1000 and phase angle is 50 in degrees\n");
printf("The above value indicates that we are dealing with a capacitive element, possibly consisting of a series combination of a resistor and capacitance");

//Result
// The impedence of the unknown arm = 1000 ohm /_ -50 deg
// Here the magnitude of impedence is 1000 and phase angle is 50 in degrees
// The above value indicates that we are dealing with a capacitive element, possibly consisting of a series combination of a resistor and capacitance 
 



