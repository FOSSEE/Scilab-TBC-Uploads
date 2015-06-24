// Scilab code Ex2.15: Pg.96-97 (2008)
clc; clear;
// For electron
// For simplicity let velocity of light be unity
c = 1;    // Velocity of light, m/s
E_k = 10;    // Kinetic energy of electron, MeV
E_r = 0.511;    // Rest energy of the electron, MeV
gama_e = 1 + (E_k/E_r);    // Simplification factor
E = E_k + E_r;    // Total energy of electron, MeV
p_e = sqrt((E^2)-(E_r^2));    // Momentum of electron, MeV/c
u_e = (p_e*c)/E;    // Speed of electron, m/s
printf("\n The value of gama for electron = %5.2f",gama_e);
printf("\n The momentum of electron = %5.2f MeV/c",p_e);
printf("\n The speed of electron = %5.3fc",u_e);

// For proton
E_p = 938.3;    // Rest energy of the proton, MeV
E = E_k + E_p ;   // Total energy of proton, MeV
gama_p = 1 + (E_k/E_p);    // Simplification factor
p_p = sqrt((E^2)-(E_p^2));    // Momentum of proton, MeV/c
u_p = (p_p*c)/E;    // Speed of proton, m/s
printf("\n The value of gama for proton = %4.2f ",gama_p);
printf("\n The momentum of proton = %5.1f MeV/c",p_p);
printf("\n The speed of proton = %6.4fc ",u_p);

// Result
// The value of gama for electron = 20.56
// The momentum of electron = 10.50 MeV/c
// The speed of electron = 0.999c m/s
// The value of gama for proton = 1.01
// The momentum of proton = 137.4 MeV/c
// The speed of proton = 0.1448c m/s