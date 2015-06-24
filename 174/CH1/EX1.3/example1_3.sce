// To find voltage drop across resistor
// Modern Electronic Instrumentation And Measurement Techniques
// By Albert D. Helfrick, William D. Cooper
// First Edition Second Impression, 2009
// Dorling Kindersly Pvt. Ltd. India
// Example 1-3 in Page 4


clear; clc; close;

// Given data
I = 3.18; //Current flowing through the resistor = 3.18A
R = 35.68; // The value of resistor = 35.68ohm

// Calculations
E = I*R;
printf("The voltage drop across the resistor = %0.4f volts",E);
disp('Since there are 3 significant figures involved in the multiplication, the result can be written only to a max of 3 significant figures');
printf("Hence the voltage drop across the resistor = %0.0f volts",E);

//Result
// The voltage drop across the resistor = 113.4624 volts 
// Since there are 3 significant figures involved in the multiplication, the result can be written only to a max of 3 significant figures   
// Hence the voltage drop across the resistor = 113 volts 
