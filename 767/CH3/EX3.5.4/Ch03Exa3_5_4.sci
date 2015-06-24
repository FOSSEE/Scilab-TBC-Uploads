// Scilab code Exa 3.5.4 : To calculate the height of coulomb barrier faced by alpha particle  : Page no. : 136 (2011)
Z_1 = 2; //Atomic number of He-4,  
Z_2 = 7; // Atomic number of N-14,
A_1 = 4; // Atomis mass of He-4 nucleus 
A_2 = 14; // Atomic mass of N-14 nucleus
R_0 = 1.5e-015; // Distance of closest approach, m
E_0 = 8.854e-012; // Permittivity of free space, C^2/Nm^2
e = 1.6e-019; // Charge of an electron, C
B = Z_1/(1.6e-013)*Z_2*e^2/(4*%pi*E_0*R_0*(A_1^(1/3)+A_2^(1/3))); // The coulomb barrier  faced by alpha particle, MeV
printf("\nThe coulomb barrier  faced by alpha particle : %4.2f MeV", B)
// Result
//    The coulomb barrier  faced by alpha particle : 3.36 MeV 