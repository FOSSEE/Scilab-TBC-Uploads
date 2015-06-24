// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 2: Dynamo Construction and Windings
// Example 2-8

clear; clc; close; // Clear the work space and console.

// Given data
P = 8; // No. of poles
S = 900; // Speed in revolutions / minute
f_1 = 50; // Frequency of generated voltage from generator 1
f_2 = 25; // Frequency of generated voltage from generator 2

// Calculations
f = ( P * S ) / 120; // Frequency of the generated voltage
S_1 = ( 120 * f_1 ) / P; // Speed of generator(rpm) 1 to generate 50 Hz voltage
S_2 = ( 120 * f_2 ) / P; // Speed of generator(rpm) 2 to generate 25 Hz voltage
omega_1 = ( 4 * %pi * f_1 ) / P; // Speed of generator 1 in rad/s
omega_2 = ( 4 * %pi * f_2 ) / P; // Speed of generator 2 in rad/s

// Display the result
disp("Example 2-8 Solution : ")
printf("\n a: f = %d Hz ", f );
printf("\n b: S1 = %d rpm \n    S2 = %d rpm ", S_1, S_2 );
printf("\n c: omega1 = %f rad/s \n    omega2 = %f rad/s", omega_1, omega_2 );
