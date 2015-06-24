// Scilab code Ex5.28: Pg 189 (2008)
clc; clear;
R_L = 15;                               // Load resistor, ohms
V_2 = 240;                              // Terminal p.d at secondary, V
V_1 = 600;                              // Supply voltage, V
// Part (a)
// Since V_1/V_2 = N_1/N_2 = k
k = V_1/V_2;                            // Turns ratio
// Part (b)
I_2 = V_2/R_L;                          // Current drawn by the load, A
P_2 = V_2*I_2;                          // Power drawn by the load, W
// Part (c)
I_1 = P_2/V_1                           // Current drawn from the supply, A
printf("\nThe transformer turns ratio = %3.1f:1", k);
printf("\nThe current drawn by the load = %2d A",I_2);
printf("\nThe power drawn by the load = %4.2f W", P_2*1e-03);
printf("\nThe current drawn from the supply = %3.1f A", I_1);

// Result
// The transformer turns ratio = 2.5:1
// The current drawn by the load = 16 A
// The power drawn by the load = 3.48 W
// The current drawn from the supply = 6.4 A
