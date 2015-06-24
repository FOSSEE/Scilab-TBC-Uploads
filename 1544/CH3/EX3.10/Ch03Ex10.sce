// Scilab code Ex3.10: Pg 90-91 (2008)
clc; clear;
C_1 = 6e-06;                    //Capacitance, F
C_2 = 4e-06;                   //Capacitance, F
V = 150;                      // Supply voltage, V
// Part (a)
// The reciprocal of the resulting capacitance of capacitors connected in series is the sum of the reciprocal of the individual capacitances present in the circuit i.e 1/C =  1/C1 + 1/C2, solving for C
C = ( C_1*C_2 )/(C_1 + C_2);               // Resulting capacitance, F
// Part (b)
Q = V*C;                                  // Electric charge on the capacitors, C
// Part (c)
V_1 = Q/C_1;                              // P.d across capacitor C_1, V
V_2 = Q/C_2;                              // P.d across capacitor C_2, V
printf("\nThe total capacitance of the combination = %3.1f micro-farad", C/1e-06);
printf("\nThe charge on each capacitor = %3d micro-coulomb",Q/1e-06);
printf("\nThe p.d. developed across %1d micro-farad capacitor = %2d V", C_1/1e-06, V_1);
printf("\nThe p.d. developed across %1d micro-farad capacitor = %2d V", C_2/1e-06, V_2);

// Result
// The total capacitance of the combination = 2.4 micro-farad
// The charge on each capacitor = 360 micro-coulomb
// The p.d. developed across 6 micro-farad capacitor = 60 V
// The p.d. developed across 4 micro-farad capacitor = 90 V
