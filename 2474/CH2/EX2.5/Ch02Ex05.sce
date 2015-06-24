// Scilab code Ex2.5: Pg.78 (2008)
clc; clear;
// For simplicity let velocity of light be unity, i.e
c = 1;     // Velocity of light, m/s
E_re = 0.5110;     // Rest energy of electron, Mev/c^2
// Since E = m*c^2, solving for m, we get
m = E_re/(c^2);     // Mass of electron, Mev/c^2
v = 0.998*c;    // Speed of muon, m/s
gama = 1/sqrt(1-(v/c)^2);     // Simplification factor
m_m = 105.7;     // Mass of muon, Mev/c^2
E = gama*m_m*c^2;     // Energy of muon, MeV
m_m = E/c^2;      // Mass of muon, MeV/c^2
printf("\nThe total energy of the cosmic ray-produced muon = %4d MeV", E);
printf("\nThe mass of muon = %4d MeV/c^2", m_m);

// Result
// Energy of muon particle = 1672 MeV
// Mass of muon particle = 1672 MeV/c^2