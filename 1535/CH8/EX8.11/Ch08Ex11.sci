// Scilab Code Ex8.11: Page-175 (2010)
c = 1;    // For simplicity assume speed of light to be unity, m/s
m0 = 9.1e-031;  // Mass of the electron, kg
E0 = 0.512;    // Rest energy of electron, MeV
T = 10;    // Kinetic energy of electron, MeV
E = T + E0;    // Total energy of electron, MeV
// From Relativistic mass-energy relation
// E^2 = c^2*p^2 + m0^2*c^4, solving for p
p = sqrt(E^2-m0^2*c^4)/c;    // Momentum of the electron, MeV
// As E = E0/sqrt(1-(u/c)^2), solving for u
u = sqrt(1-(E0/E)^2)*c;    // Velocity of the electron, m/s
printf("\nThe momentum of the electron = %4.1f/c MeV", p);
printf("\nThe velocity of the electron = %6.4fc", u);

// Result
// The momentum of the electron = 10.5/c MeV
// The velocity of the electron = 0.9988c 
