// Scilab code Ex10.4: Pg:417 (2008)
clc;clear;
alpha_e = 3.28e-040;    // Electronic polarizability of sulphur atom, Force meter square
eps_0 = 8.85e-012;    // Permittivity of free space, farad per metre
N_A = 6.023e+026;    // Avagadro's number
M = 32;    // Atomic weight of sulphur
rho = 2.08e+003;    // Density of sulphur atom, kg per cubic meter
// Since (eps_r - 1)/(eps_r + 2) = N*alphe_e/(3*eps_0), solvinf for  eps_r
ep_r = poly(0, 'ep_r');
ep_r = roots((ep_r - 1)*3*M*eps_0-(ep_r + 2)*N_A*rho*alpha_e);    // Relative permittivity of the medium
printf("\nThe relative dielectric constant for sulphur = %3.1f", ep_r);

// Result 
// The relative dielectric constant for sulphur = 3.8