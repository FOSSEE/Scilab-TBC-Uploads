// Scilab code Ex1.4: Pg.9 (2008)
clc; clear;
Q = 35e-03;    // Electric charge, C
t = 20e-03;    // Time for transference of charge between two points, s
// Since Q = I * t, solving for I
I = Q/t;    // Electric current flowing between the two points, A
printf("\nThe value of electric current flowing = %4.2f A", I);

// Result
// The value of electric current flowing = 1.75 A 
