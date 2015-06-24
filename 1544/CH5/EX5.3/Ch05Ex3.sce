// Scilab code Ex5.3: Pg 147 (2008)
clc; clear;
e = 100;                                          // Induced emf, V
// For simplification let (delta_phi)/(delta_t) = k
k = 0.1;                                         // Rate of chage of flux linked with coil, Wb/s
// Since e =((-N)*delta_phi)/delta_t, soling for N
N = (e)/k;                                      // Number of turns
printf("\nThe number of turns on the coil = %4d", N);

// Result
// The number of turns on the coil = 1000
