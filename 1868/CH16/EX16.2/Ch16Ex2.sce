// Scilab code Ex16.2: Pg 22 (2005)
clc; clear;
H = 23e-03/(9.46e15);    // Hubble's constant, km/s/ly
G = 6.67e-11;      // Gravitational constant, N-m^2/kg^2
//  Since H^2 = (8*%pi*G*p_c)/3, solving for p_c
p_c = (3*H^2)/(8*%pi*G);    // Critical mass density of universe, kg/m^3
printf("\nCritical mass density of universe = %4.2e kg per metre cube", p_c);


// Result
// Critical mass density of universe = %1.06e-27 kg/m^3
