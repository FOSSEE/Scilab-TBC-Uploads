// Scilab code Ex3.9: Pg 89 (2008)
clc; clear;
C_1 = 4.7e-06;                   //Capacitance, F
C_2 = 3.9e-06;                   //Capacitance, F
C_3 = 2.2e-06;                   //Capacitance, F
// The resulting capacitance of parallerly connected capacitors is the sum of the individual capacitance present in the circuit
C = C_1 + C_2 + C_3;             // Resulting capacitance  of the circuit, F
printf("\nThe resulting capacitance of the combination = %4.1f micro-farad", C/1e-06);

// Result
// The resulting capacitance of the combination = 10.8 micro-farad
