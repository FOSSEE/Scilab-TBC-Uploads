// Scilab Code Ex12.15 Binding energy of Fe using Weizsaecker formula: Pg: 251 (2008)
amu = 931.5;    // Energy equivalent of 1 amu, MeV
A = 56;    // Mass number of Fe
Z = 26;    // Atomic number of Fe
av = 15.7;    // Binding energy per nucleon due to volume effect, MeV
as = 17.8;    // Surface energy constant, MeV
ac = 0.711;    // Coulomb energy constant, MeV
aa = 23.7;    // asymmetric energy constant, MeV
ap = 11.18;    // Pairing energy constant, MeV
BE = av*A - as*A^(2/3) - ac*Z^2*A^(-1/3)-aa*(A-2*Z)^2*A^(-1)+ap*A^(-1/2);    // Weizsaecker Semiempirical mass formula
M_Fe = 55.939395;    // Atomic mass of Fe-56
mp = 1.007825;    // Mass of proton, amu
mn = 1.008665;    // Mass of neutron, amu
E_B = (Z*mp+(A-Z)*mn-M_Fe)*amu;    // Binding energy of Fe-56, MeV
printf("\nThe binding energy of Fe-56 using Weizsaecker formula = %6.2f MeV", BE);
printf("\nThe binding energy of Fe-56 using mass defect = %6.2f MeV", E_B);
printf("\nThe result of the semi empirical formula agrees with the experimental value within %3.1f percent", abs((BE-E_B)/BE*100));
// Result
// The binding energy of Fe-56 using Weizsaecker formula = 487.75 MeV
// The binding energy of Fe-56 using mass defect = 488.11 MeV 
// The result of the semi empirical formula agrees with the experimental value within 0.1 percent 