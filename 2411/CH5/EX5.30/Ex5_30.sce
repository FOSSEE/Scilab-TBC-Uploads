// Scilab Code Ex5.30: Page-300 (2008)
clc; clear;
e = 1.602e-019;    // Energy equivalent of 1 eV, J
E1 = 3.2e-018/e;    // Minimum energy possible for a particle entrapped in a one dimensional box, eV
n = [1 2 3 4];    // Principal quantum number for K, L, M and N states
printf("\nThe next three energies which the particle can have are:");
for i = 2:1:4
    printf("\nE%d = %d eV", i, ceil(i^2*E1));
end

// Result
// The next three energies which the particle can have are:
// E2 = 80 eV
// E3 = 180 eV
// E4 = 320 eV 