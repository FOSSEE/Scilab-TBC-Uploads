// Scilab code Ex6.5: Pg 202 (2005)
clc; clear;
h = 6.626e-034;     // Planck's constant, Js
m = 1e-06;    // Mass of the object, kg
n = 1;    // Quantum number for minimum energy level
L = 1e-02;     // Distance between two rigid walls, m
E1 = n^2*h^2/(8*m*L^2);  // Minimum energy of the object, J
v1 = sqrt(2*E1/m);    // Minimum speed of the object, m/s
v = 3.00e-02;    // Given speed of the objct, m/s
E = 1/2*m*v^2;  // Energy of the object for given speed, J
n = sqrt(8*m*L^2*E)/h;  // Quantum number corresponding to the given speed
printf("\nThe minimum speed of the object = %4.2e m/s", v1);
printf("\nThe quantum number corresponding to the speed of %4.2e m/s is n = %4.2e", v1, n);

// Result
//  The minimum speed of the object = 3.31e-26 m/s
// The quantum number corresponding to the speed of 3.31e-26 m/s is n = 9.06e+23 
