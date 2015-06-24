// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-19

clear; clc; close; // Clear the work space and console.

// Given data
P = 8 ; // Number of poles in WRIM
f = 60 ; // Operating frequency of the WRIM in Hz
/// WRIM is driven by variable-speed prime mover as a frequency changer
S_con_a1 = 1800 ; // Speed of the convertor in rpm
S_con_a2 = 450 ; // Speed of the convertor in rpm

f_con_b1 = 25 ; // Frequency of an induction converter in Hz
f_con_b2 = 400 ; // Frequency of an induction converter in Hz
f_con_b3 = 120 ; // Frequency of an induction converter in Hz

// Calculations
S = (120*f)/P ; // Speed in rpm of the rotating magnetic field

// case a
// Subscript a1 in f_con indicates case a 1st frequecy in Hz
f_con_a1 = f*(1 + S_con_a1/S); // Frequency of an induction converter in Hz

// Subscript a2 in f_con indicates case a 2nd frequency in Hz
f_con_a2 = f*(1 - S_con_a2/S); // Frequency of an induction converter in Hz

// case b
// Subscript b1 in S-con indicates case b 1st speed of converter in rpm
S_con_b1 = ( -1 + f_con_b1/f) * S ; // Speed of the convertor in rpm

// Subscript b2 in S-con indicates case b 2nd speed of converter in rpm
S_con_b2 = ( -1 + f_con_b2/f) * S ; // Speed of the convertor in rpm

// Subscript b3 in S-con indicates case b 3rd speed of converter in rpm
S_con_b3 = ( -1 + f_con_b3/f) * S ; // Speed of the convertor in rpm


// Display the results
disp("Example 9-19 Solution : ");

printf(" \n Using Eq.(9-26),\n");

printf(" \n a: f_con = %d Hz for %d rpm in opposite direction\n",f_con_a1,S_con_a1);
printf(" \n    f_con = %d Hz for %d rpm in same direction\n",f_con_a2,S_con_a2);

printf(" \n b: 1. S_con = %.f rpm, or %.f rpm in same direction.\n",S_con_b1,abs(S_con_b1));
printf(" \n    2. S_con = %d rpm in opposite direction.\n",S_con_b2);
printf(" \n    3. S_con = %d rpm in opposite direction to rotating stator flux.\n",S_con_b3);
