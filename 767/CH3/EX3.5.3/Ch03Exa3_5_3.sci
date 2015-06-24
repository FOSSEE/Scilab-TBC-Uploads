// Scilab code Exa 3.5.3 : To calculate the height of barrier faced by alpha particle of Ra-226 : Page no. : 136 (2011)
Z = 88; // Atomic number of Ra-226 nucleus, 
A = 226; // Atomic mass of Ra-226 nucleus
R_0 = 1.3e-015; // Distance of closest approach, m
E_0 = 8.854e-012; // Permittivity of free space, C^2/Nm^2
e = 1.6e-019; // Charge of an electron, C
B = 2/(1.6e-013)*(Z-2)*e^2/(4*%pi*E_0*R_0*A^(1/3)); // The barrier height faced by alpha particle, MeV
printf("\nThe barrier height faced by alpha particle : %4.1f MeV", B)
// Result
//         The barrier height faced by alpha particle : 31.2 MeV