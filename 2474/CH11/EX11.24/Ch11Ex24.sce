// Scilab code Ex11.24: Pg.535 (2008)
clc; clear;

// Part (a)
k = 9e+09;    // Coulomb's constant, N-m^2/C^2
e = 1.6e-19;    // Electronic charge, C
r = 3.0e-15;    // Separation between tne charges, m
U = k*e^2/r;    // Height of potential barrier, J
k = 1.38e-23;    // Boltzmann constant, J/K
// In order to overcome this barrier, the average energy of the protons in the plasma i.e (3/2)*k*T >= U/2, solving for T we get
T = 2*U/(3*2*k);    // Minimum temperature required to overcome barrier, K
printf("\nThe minimum temperature required by proton in H plasma to overcome the Coulomb barrier = %3.1e K", T);

// Part (b)
m_H_1 = 1.007825;    // Mass of Hydrogen, u
m_H_2 = 2.014102;    // Mass of Deutrium, u
m_e = 0.001097/2;    // Mass of electron, u
Q = (2*m_H_1 - m_H_2 - 2*m_e)*931.5;    // Energy released in the fusion, MeV
printf("\nThe energy released in the fusion = %4.2f MeV", Q);

// Result
// The minimum temperature required by proton in H plasma to overcome the Coulomb barrier = 1.9e+009 K
// The energy released in the fusion = 0.42 MeV 