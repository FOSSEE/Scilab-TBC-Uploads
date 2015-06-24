// Scilab code Ex12.2: Pg 429 (2005)
clc; clear;
V = 7;    // Energy gap, V
L = 5e-08;   // Mean free path , m
E = V/L;   // Electric field, V/m
printf("\nThe electric field strength required to produce conduction in diamond = %3.1fe+08 V/m", E*1e-08);
printf("\n");

// Result
// The electric field strength required to produce conduction in diamond = 1.4e+08 V/m