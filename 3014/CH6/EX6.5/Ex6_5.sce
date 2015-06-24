
clc 
//Given that
L = 1 // Inductance in Hanery
nu = 2e6 // Frequency in Hz
printf("Example 6.5\n")
C= 1/(4*((%pi)^2)*nu^2*L) // Calculation of capacitance
printf("Capacitance is %e microfarad.\n\n\n",C*1e6)
// Answer in book is 0.00634 micro Farad
