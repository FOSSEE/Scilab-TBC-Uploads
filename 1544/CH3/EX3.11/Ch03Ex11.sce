// Scilab code Ex3.11: Pg 91-92 (2008)
clc; clear;
C_1 = 3e-06;                    //Capacitance, F
C_3 = 12e-06;                   //Capacitance, F
C_2 = 6e-06;                    //Capacitance, F
V = 400;                        // Supply voltage, V
// The reciprocal of the resulting capacitance of capacitors connected in series is the sum of the reciprocal of the individual capacitances present in the circuit i.e 1/C =  1/C1 + 1/C2 + 1/C_3, solving for C
C = (C_1 * C_2 * C_3)/( C_1*C_2 + C_2*C_3 + C_3*C_1);               // Resulting capacitance, F
Q = V*C;                                  // Electric charge on the capacitors, C
// Part (c)
V_1 = Q/C_1;                              // P.d across capacitor C_1, V
V_2 = Q/C_2;                              // P.d across capacitor C_2, V
V_3 =Q/C_3;                               // P.d across capacitor C_2, V
printf("\nP.d across capacitor %1d micro-farad = %5.1f V", C_1/1e-06, V_1);
printf("\nP.d across capacitor %1d micro-farad = %5.1f V", C_2/1e-06, V_2);
printf("\nP.d across capacitor %2d micro-farad = %4.1f V", C_3/1e-06, V_3);

// Result
// P.d across capacitor 3 micro-farad = 228.6 V
// P.d across capacitor 6 micro-farad = 114.3 V
// P.d across capacitor 12 micro-farad = 57.1 V
