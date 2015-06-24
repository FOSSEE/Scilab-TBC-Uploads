// Scilab code Ex2.2: Pg:79(2008)
clc;clear;
amu = 1.67e-027;    // Mass of a nucleon, kg
E = 8e+004;    // Electric field in a Bainbridge mass spectrograph, V/m
B = 0.55;    // Magnetic induction, Wb per square meter
M1 = 20;    // Atomic mass of first isotope of neon, amu
M2 = 22;    // Atomic mass of second isotope of neon, amu
q = 1.602e-019;    // Charge of the ion, coulomb
delta_x = 2*E*(M2-M1)*amu/(q*B^2);    // Separation between the lines, mm
printf("\nLinear separation between the lines on a photographic plates = %4.2f m", delta_x);

// Result 
// Linear separation between the lines on a photographic plates= 0.01 m 