// Scilab code Ex10.3  : Pg:414 (2008)
clc;clear;
N = 9.8e+026;    // Number of atoms in one cubic meter of hydrogen gas
R = 0.53e-010;    // Radius of hydrogen atom, meter
epsilon_0 = 8.85e-012;    // Permittivity of free space, force per meter
alpha_e = 4*%pi*epsilon_0*R^3;    // Electronic polarizability of an argon atom, farad Sq.m
epsilon_r = 1 + 4*%pi*N*R^3;    // Relative permittivity of one cubic meter of hydrogen gas
printf("\nThe polarizability of one cubic meter of hydrogen gas = %4.2e farad Sq.m", alpha_e);
printf("\nThe relative permittivity of one cubic meter of hydrogen gas = %6.4f", epsilon_r);

// Result 
// The polarizability of one cubic meter of hydrogen gas = 1.66e-041 farad Sq.m
// The relative permittivity of one cubic meter of hydrogen gas = 1.0018