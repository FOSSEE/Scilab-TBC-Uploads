// Scilab code Ex5.28: Pg 185-186 (2008)
clc; clear;
L_1 = 25e-03;                             // Self-inductance of first coil, H
L_2 = 40e-03;                             // Self-inductance of  second coil, H
I = 0.25;                                  // Electric current in coils, A
k =0.8;                                    // Coupling coefficient
// Part (a)
W_1 = (L_1*(I^2))/2;                       // Energy stored in first coil, J
W_2 = (L_2*(I^2))/2;                       // Energy stored in second coil, J
M = k*sqrt(L_1*L_2);                       // Mutual inductance of coils
// Part (b)
W_M = M*(I)*(I);                           // Energy stored due to mutual inductance of coils, J
W_sa = W_1 + W_2 + W_M;                        // Energy stored by two inductors when connected in series aiding, J
W_so = W_1 + W_2 - W_M;                        // Energy stored by two inductors when connected in series opposition, J
printf("\nEnergy stored in first coil = %4.2f mJ", W_1/1e-03)
printf("\nEnergy stored in second coil = %4.2f mJ", W_2/1e-03)
printf("\nEnergy stored by two inductors when connected in series aiding = %3.1f mJ", W_sa/1e-03)
printf("\nEnergy stored by two inductors when connected in series opposition = %4.2f mJ", W_so/1e-03)

// Result
// Energy stored in first coil = 0.78 mJ
// Energy stored in second coil = 1.25 mJ
// Energy stored by two inductors when connected in series aiding = 3.6 mJ
// Energy stored by two inductors when connected in series opposition = 0.45 mJ
