// Scilab Code Ex10.1.2 Binding energy per nucleon for oxygen isotopes: Pg:210 (2008)
mp = 1.007276;    // Mass of proton, amu
mn = 1.008665;    // Mass of neutron, amu
amu = 931;    // Energy equivalent of 1 amu, MeV
// For Isotope O-16
M_O16 = 15.990523;    // Mass of O-16 isotope, amu
Z = 8;    // Number of protons
N = 8;    // Number of neutrons
BE = (8*(mp+mn)-M_O16)*amu;    // Binding energy of O-16 isotope, MeV
BE_bar16 = BE/(Z+N);    // Binding energy per nucleon of O-16 isotope, MeV
// For Isotope O-18
M_O18 = 17.994768;    // Mass of O-18 isotope, amu
Z = 8;    // Number of protons
N = 10;    // Number of neutrons
BE = (8*mp+10*mn-M_O18)*amu;    // Binding energy of O-18 isotope, MeV
BE_bar18 = BE/(Z+N);    // Binding energy per nucleon of O-18 isotope, MeV
printf("\nThe binding energy per nucleon of O-16 isotope = %5.3f MeV", BE_bar16);
printf("\nThe binding energy per nucleon of O-18 isotope = %5.3f MeV", BE_bar18);
// Result 
// The binding energy per nucleon of O-16 isotope = 7.972 MeV
// The binding energy per nucleon of O-18 isotope = 7.763 MeV 