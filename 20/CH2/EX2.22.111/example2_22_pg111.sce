// Example2_22_pg111.sce
// Conductively and Inductively transferred power
// Theory of Alternating Current Machinery by Alexander Langsdorf
// First Edition 1999, Thirty Second reprint
// Tata McGraw Hill Publishing Company
// Example in Page 111


clear; clc; close;

// Given data

// Transformer data
va = 10e+3; // VA rating of Transformer, VA
v1 = 2300; // Voltage in volts
v2 = 230; // Voltage in volts
disp('Referring to Fig 2.57, we have');

// Calculations
V_1 = v1 + v2; // Voltage in volts
I_1 = va/v2; // Voltage in volts
I_3 = va/v1; // Voltage in volts
I_2 = I_1 + I_3; // Current in Amperes
a = V_1 / v1;
P = V_1 * I_1; // Power in watts
P_i = P * (a - 1)/a; // Power in watts
P_c = round(P/a); // Power in watts

printf("\n\nTotal volt-amperes supplied from the source is = %d VA \nVolt-Amperes supplied inductively is = %d VA\nPower supplied conductively is %d VA\n", P, P_i, P_c);

// Result
//  Referring to Fig 2.57, we have   
// 
// 
// Total volt-amperes supplied from the source is = 110000 VA 
// Volt-Amperes supplied inductively is = 10000 VA
// Power supplied conductively is 100000 VA
