// Scilab code Exa6.5.3 : To calculate the velocity of the electrons using relativistic considerations . Page 269 (2011)
K_E = 1.17; // Kinetic energy of the electron, MeV
E_r = 0.511; // Rest mass energy of the electron, MeV
v = [1-1/(K_E/E_r+1)^2]; // Velocity of the electron, m/s
printf("\nVelocity of the electron : %4.2fc", v)
// Result
//    Velocity of the electron : 0.91c 