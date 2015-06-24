// Scilab code Ex5.20: Pg 176 (2008)
clc; clear;
L = 50e-03;                               // Self-inductance, H
e = 8;                                   // Induced emf, V
// Since e = ((-L)*delta_I)/(delta_t), solving for delta_I/delta_t,and for simplicity letting the  rate of change of current i.e delta_I/delta_t = k
k = e/L;                    // Rate of change of current, As
printf("\nThe rate of change of current = %3d A/s",k);

// Result
// The rate of change of current = 160 A/s
