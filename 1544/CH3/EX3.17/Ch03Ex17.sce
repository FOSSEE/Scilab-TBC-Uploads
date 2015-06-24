// Scilab code Ex3.17: Pg 99-100 (2008)
clc; clear;
V = 200;                       // Supply voltage, V
C_1 = 10e-06;                  // Capacitance, farad
C_2 = 6.8e-06;                 // Capacitance, farad
C_3 = 4.7e-06;                 // Capacitance, farad
// Part (a)
// Since each capacitor will take charge according to its capacitance, so we have
Q_1 = V*C_1;                   // Charge sored on  capacitor C_1, C
W_1 = 0.5*C_1*(V^2);           // Energy sored on  capacitor C_1, J
// Part (b)
// Since C_2 and C_3 are in series and hence, their equivalent capacitance is given by their series combination
C_4 = (C_2 * C_3)/(C_2 + C_3);          // Equivalent capacitance of C_2 and C_3, F
// Since C_1 and C_4 are in parallel and hence, their equivalent capacitance is given by their parallel combination
C = C_1 + C_4;               // Total capacitance of circuit, F
// Since Q = C*V, solving for V
V_1 = Q_1/C;                         // New p.d across C_1, V
W = 0.5*C*(V_1^2);                 // Total energy remaining in the circuit, J
energy_used = W_1 - W;             // Energy, J
printf("\nThe charge and energy stored by %2d micro-F capacitor are %1d mC and %2.1f J respectively ", C_1/1e-06, Q_1/1e-03, W_1);
printf("\nThe new p.d across %2d micro-F capacitor = %5.1f V", C_1/1e-06, V_1);
printf("\nThe amount of energy used in charging %3.1f micro-F and %3.2f micro-F capacitors from %2d micro-F capacitor = %4.3f J", C_2/1e-06, C_3/1e-06, C_1/1e-06, energy_used/1e-03);
 
// Result
// The charge and energy stored by 10 micro-F capacitor are 2 mC and 0.2 J respectively 
// The new p.d across 10 micro-F capacitor = 156.5 V
// The amount of energy used in charging 6.8 micro-F and 4.70 micro-F capacitors from 10 micro-F capacitor = 43.495 J 
