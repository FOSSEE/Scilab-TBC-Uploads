// Scilab code Ex9.3: Pg.375 (2008)
clc; clear;
P = 1.96e-29;    // Electric dipole moment of LiH, C-m
e = 1.60e-19;    // Electronic charge, C
r_o = 0.159e-09;    // Equilibrium separation of ions, m
P_ionic = e*r_o;    // Ionic dipole moment of LiH, C-m
P_fc = P/P_ionic;    // Fractional amount of ionic bond
P_covalent = 100 - (P_fc*100);    // Percentage of covalent bond in LiH
printf("\nThe percentage of covalent bond in LiH = %d percent", ceil(P_covalent));

// Result
// The percentage of covalent bond in LiH = 23 percent 