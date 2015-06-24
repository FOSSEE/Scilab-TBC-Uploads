// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 1: Electromechanical Fundamentals
// Example 1-4

clear; clc; close; // Clear the work space and console.

// Given data
v = 1.5; // v = velocity in m/s with which the conductor is moving 
l = 0.4; // l = length of the conductor
B = 1; // B = uniform field intensity in tesla
theta_a = 90; // theta_a = angle between the motion of the conductor and field
theta_b = 35; // theta_b = angle between the motion of the conductor and field
theta_c = 120; // theta_c = angle between the motion of the conductor and field

// Calculations
E_a = B * l * v * sind(theta_a); // Voltage induced in the conductor for theta_a
E_b = B * l * v * sind(theta_b); // Voltage induced in the conductor for theta_b
E_c = B * l * v * sind(theta_c); // Voltage induced in the conductor for theta_c

// Display the result
disp("Example 1-1 Solution : ");

printf("\n a: E = %.2f V ", E_a);
printf("\n b: E = %.3f V ", E_b);
printf("\n c: E = %.2f V ", E_c);
