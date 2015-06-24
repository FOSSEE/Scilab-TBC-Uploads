// Scilab code Ex3.16: Pg 99 (2008)
clc; clear;
C_1 = 3e-06;                                  // Capacitance, F
C_2 = 6e-06;                                  // Capacitance, F
V_1 = 250;                                   // Voltage across capacitor C_1, V
// Since each capacitor will take charge according to its capacitance, so we have
Q = C_1*V_1;                                 // Charge on first capacitor C_1, C
W_1 = 0.5*C_1*(V_1^2);                       // Energy stored, J
// When the two capacitors are connected in parallel the 3 micro-farad will share its charge with 6 micro-farad capacitor. Thus the total charge in the system will remain unchanged, but the total capacitance will now be different
C = C_1 + C_2;                              // Total capacitance, F
// Since Q = C*V, solving for V
V = Q/C;                                    // Voltage across capacitor C_2, V
W = 0.5*C*(V^2);                            // Total energy stored by the combination, J
printf("\nThe charge and energy stored by %1d micro-F capcitor are %3.2f mC and %5.2f mJ respectively ", C_1/1e-06, Q/1e-03 , W_1/1e-03);
printf("\nThe p.d. between the plates = %5.2f V", V);
printf("\nThe energy stored by the combination of %1d micro-F and %1d micro-F capacitors = %5.2f mJ", C_1/1e-06, C_2/1e-06, W/1e-03);

// Result
// The charge and energy stored by 3 micro-F capcitor are 0.75 mC and 93.75 mJ respectively 
// The p.d. between the plates = 83.33 V
// The energy stored by the combination of 3 micro-F and 6 micro-F capacitors = 31.25 mJ 
