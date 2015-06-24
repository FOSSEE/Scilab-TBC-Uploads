// Scilab code Ex2.15: Pg 67 (2008)
clc; clear;
l1 = 600e-03;             // Scale reading, metre
l2 = 745e-03;            // Scale reading, metre
l_s = 509.3e-03;           // Total scale length, metre
E_s = 1.0186;               // Source voltage, V
E1 = ( l1/l_s )*E_s;         // Voltage drop across length l1, V
E2 = ( l2/l_s)*E_s;          // Voltage drop across length l2, V
printf("\nThe emf of the first cell = %3.1f V ", E1)
printf("\nThe emf of the second cell = %3.2f V ", E2)

// Result
// The emf of the first cell = 1.2 V
// The emf of the first cell = 1.49 V  
