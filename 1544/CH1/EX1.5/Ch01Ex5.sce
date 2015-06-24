// Scilab code Ex1.5: Pg.9 (2008)
clc; clear;
I = 120e-06;    // Electric current, A
t = 15;    // Time for transference of charge between two points, s
// Since I = Q/t, solving for Q
Q = I*t;    // Electric chrage transferred, C
printf("\nThe value of electric charge transferred = %3.1f mC", Q/1e-03);

// Result
// The value of electric charge transferred = 1.8 mC 
