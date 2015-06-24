// Scilab code Ex1.3: Pg.5 (2008)
clc; clear;
m = 750/1e+03;    // Mass of the body, kg
F = 2;    // Force acting on the mass, N
// Since F = m * a, (Newton's Second Law of motion), solving for a
a = F/m;    // Acceleration produced in the body, metre per second square
printf("\nThe acceleration produced in the body = %5.3f metre per second square", a)

// Result
// The acceleration produced in the body = 2.667 metre per second square 
