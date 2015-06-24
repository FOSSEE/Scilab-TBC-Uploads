// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 7: PARALLEL OPERATION
// Example 7-5

clear; clc; close; // Clear the work space and console.

// Given data
E_1 = 220 ; // Terminal voltage of alternator 1 in volt 
E_2 = 222 ; // Terminal voltage of alternator 2 in volt 
f_1 = 60 ; // Frequency of alternator 1 in Hz
f_2 = 59.5 ; // Frequency of alternator 2 in Hz
// Switch is open

// Calculations
// case a
E_max = (E_1 + E_2)/2 ; // Maximum effective voltage across each lamp in volt 
E_min = (E_2 - E_1)/2 ; // Minimum effective voltage across each lamp in volt 

// case b
f = f_1 - f_2 ; // Frequency in Hz of the voltage across the lamps

// case c
E_peak = E_max / 0.7071 ; // Peak value of the voltage in volt across each lamp

// case d
n = (1/2)*f_1 ; // Number of maximum light pulsations per minute

// Display the results
disp("Example 7-5 Solution : ");
printf(" \n a: E_max/lamp = %d V (rms)\n ", E_max );
printf(" \n    E_min/lamp = %d V \n ", E_min );
printf(" \n b: f = %.1f Hz \n ", f );
printf(" \n c: E_peak = %.f V \n ", E_peak );
printf(" \n d: n = %d pulsations/min ", n );
