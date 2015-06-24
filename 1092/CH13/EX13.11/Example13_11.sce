// Electric Machinery and Transformers
// Irving L kosow 
// Prentice Hall of India
// 2nd editiom

// Chapter 13: RATINGS,SELECTION,AND MAINTENANCE OF ELECTRIC MACHINERY
// Example 13-11

clear; clc; close; // Clear the work space and console.

// Given data
// 3-phase distribution system
V = 2300 ; // Line voltage of 3-phase distribution system in volt
V_p = 1328 ; // Phase voltage of 3-phase distribution system in volt

V_b = 69000 ; // Common base line voltage in volt
V_pb = 39840 ; // Common base phase voltage in volt

// Calculations
// case a
V_pu_line = V / V_b ; // Distribution system p.u line voltage

// case a
V_pu_phase = V_p / V_pb ; // Distribution system p.u phase voltage

// Display the results
disp("Example 13-11 Solution : ");
printf(" \n a: Distribution system p.u line voltage :\n    V_pu = %.2f p.u\n",V_pu_line);

printf(" \n b: Distribution system p.u phase voltage :\n    V_pu = %.2f p.u\n",V_pu_phase);
