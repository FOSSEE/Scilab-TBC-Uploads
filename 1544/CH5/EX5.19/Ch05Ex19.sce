// Scilab code Ex5.19: Pg 176 (2008)
clc; clear;
e = 30;                   // Induced emf, V
// For simplicity, let rate of change of current i.e delta_I/delta_t = k
k = 200;                               // Rate of change of current, ampere-second
// Since e = ((-L)*delta_I)/(delta_t), solving for L
L = e/k;                               // Self-inductance, H
printf("\nThe inductance of the circuit = %4.2f H", L);

// Result
// The inductance of the circuit = 0.15 H
