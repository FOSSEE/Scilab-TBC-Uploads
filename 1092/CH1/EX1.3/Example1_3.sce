// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 1: Electromechanical Fundamentals
// Example 1-3

clear; clc; close; // Clear the work space and console.

// Given data
l = 18; // l = length of the conductor in inches
B = 50000; // B = uniform magnetic field in lines/sq-inches
d = 720; // d = distance travelled by conductor in inches
t = 1; // t =time taken for the conductor to  move in second
theta = 75 // theta = angle between the motion of the conductor and field
// in radians

// Calculations
v = d/t; // v = velocity in inches/second with which the conductor moves

E = B * l * v * 10 ^ -8 * sind(theta); // E = Average induced EMF in volt

// Display the result
disp("Example 1-3 Solution : ");

disp(" Average induced EMF in volt is :")
printf("  E = %.2f V ", E);
