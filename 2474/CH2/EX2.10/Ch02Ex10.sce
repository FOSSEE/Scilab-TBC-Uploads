// Scilab code Ex2.10: Pg.86 (2008)
clc; clear;
// For simplicity let c = 1, i.e
c = 1;     // Velocity of light, m/s
E = 2.40;     // Total energy of electron, MeV
E_r = 0.511;     // Rest energy of electron, MeV
// Since E^2 = (p*c)^2 + (m*c^2)^2, solving for p, we get
p_e = sqrt(E^2 - (E_r^2));     // Momentum of electron in laboratory frame, MeV/c
// Since 1 Mev/c = 5.34e-22 kg-m/s, so we get
p = p_e*5.34e-22;     // Momentum of electron in laboratory frame, kg-m/s
u = p_e*c/E;      // Speed of electron in labortary frame, m/s
printf("\nThe momentum of electron in laboratory frame = %4.2e kg-m/s", p);
printf("\nThe speed of electron in laboratory frame = %5.3fc unit", u);

// Result
// The momentum of electron in laboratory frame = 1.25e-021 kg-m/s
// The speed of electron in laboratory frame = 0.977c unit 