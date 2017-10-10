// Ex9_3 Page:175 (2014)
clc;clear;
f0 = 1876.06;    // Fundamental frequancy of NO molecule, per cm
f1 = 3724.2;    // First overtone frequency of NO molecule, per cm
A = [f0 2; f1/2 3];    // Declare the 2 X 2 matrix for multiplication
I = [1;1];    // Unity column matrix
X = inv(A)*I;    // Eigen value matrix
nu_e_bar = 1/X(1);    // Equilibrium vibrational frequency, per cm
x_e = X(2);    // Anharmonicity constant
E0 = 1/2*nu_e_bar;    // Zero point energy of the molecule, per cm
printf("\nThe equilibrium vibrational frequency = %7.2f per cm", nu_e_bar);
printf("\nThe anharmonicity constant = %4.2e", x_e);
printf("\nThe zero point energy of the molecule = %3d per cm", ceil(E0));

// Result
// The equilibrium vibrational frequency = 1903.98 per cm
// The anharmonicity constant = 7.33e-003
// The zero point energy of the molecule = 952 per cm 
