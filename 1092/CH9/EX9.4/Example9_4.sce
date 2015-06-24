// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 9: POLYPHASE INDUCTION (ASYNCHRONOUS) DYNAMOS
// Example 9-4

clear; clc; close; // Clear the work space and console.

// Given data
P = 4 ; // Number of poles in the IM
hp = 50 ; // rating of the IM in hp
V_o = 208 ; // Voltage rating of the IM in volt
T_orig = 225 ; // Starting torque in lb-ft
I_orig = 700 ; // Instantaneous startign current in A at rated voltage
V_s = 120 ; // Reduced 3-phase voltage supplied in volt

// Calculations
// case a
T_s = T_orig * (V_s/V_o)^2 ; // Starting torque in lb-ft after application of V_s

// case b
I_s = I_orig * (V_s/V_o) ; // Starting current in A after application of V_s

// Display the results
disp("Example 9-4 Solution : ");
printf(" \n a: Starting torque :\n    T_s = %.f lb-ft \n",T_s );

printf(" \n b: Starting current :\n    I_s = %d A \n",I_s );
