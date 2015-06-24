// FUNDAMENTALS OF ELECTICAL MACHINES 
// M.A.SALAM 
// NAROSA PUBLISHING HOUSE 
// SECOND EDITION

// Chapter 4 : DIRECT CURRENT GENERATORS
// Example : 4.9

clc;clear; // clears the console and command history 

// Given data
P = 4      // number of poles
Z = 500    // number of conductors
I_a = 30   // generetor supply current in A
alpa = 6   // brushes displaced angle in degree

// caclulations 
A = P/2               // for wave connected A=P/2
I_c = I_a/A           // current per conductor in A
AT_d = Z*I_c*alpa/360 // demagnetizing ampere turns per pole in At
AT_c = Z*I_c*((1/(2*P))-(alpa/360)) // cross magnetizing ampere turn per pole in At


// display the result 
disp("Example 4.9 solution");
printf(" \n Demagnetizing ampere turns per pole \n AT_d = %.1f At \n", AT_d );
printf(" \n Cross magnetizing ampere turn per pole \n AT_c = %.1f At \n", AT_c );
