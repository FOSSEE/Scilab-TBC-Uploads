// Scilab code Ex11.19: Pg.527 (2008)
clc; clear;
mp = 1.007276;    // Mass of proton, amu
mn = 1.008665;    // Mass of neutron, amu
amu = 931.5;    // Energy equivalent of 1 amu, MeV/c^2
u = 1.66e-027;    // Mass of a proton, kg
E_DT = -17.6;    // Energy released in deuterium-tritium fusion, MeV
a1 = 15.67;    // Coefficient in the volume energy term
a2 = 17.23;    // Coefficient in the surface energy term
a3 = 0.75;    // Coefficient in the Coulomb energy term
a4 = 93.2;    // Coefficient in the assymetry energy term
// Function to decide the value of a5 
function a5 = pec(N,Z)
    if modulo(N, 2) == 0 & modulo(Z, 2) == 0 then    // even-even
        a5 = 12;
    else if modulo(N, 2) <> 0 & modulo(Z, 2) <> 0 then    // odd-odd
             a5 = -12 
             else a5 = 0;    // Even-odd or Odd-even
         end
    end
endfunction

// For U-235
A = 235;    // Mass number of U-235
Z = 92;    // Atomic number of U-235
N = A-Z;    // Neutron number of U-235
a5 = pec(N,Z);
M_U235 = Z*mp + (N+1)*mn - (a1*A - a2*A^(2/3) - a3*Z^2*A^(-1/3) - a4*(A-2*Z)^2/A +a5*A^(-1/2))/amu;    // Mass of U-235 nucleus
BPN_U235 = -7.6;    // Binding energy per nucleon of U-235, MeV/c^2
BE_U235 = M_U235*BPN_U235;    // Binding energy of U-235 nucleus, MeV/c^2

// For Kr-92
A = 92;    // Mass number of Kr-92
Z = 36;    // Atomic number of Kr-92
N = A-Z;    // Neutron number of Kr-92
a5 = pec(N,Z);
M_Kr92 = Z*mp + N*mn - (a1*A - a2*A^(2/3) - a3*Z^2*A^(-1/3) - a4*(A-2*Z)^2/A +a5*A^(-1/2))/amu;    // Mass of Kr-92 nucleus
BPN_Kr92 = -8.7;    // Binding energy per nucleon of Kr92, MeV/c^2
BE_Kr92 = M_Kr92*BPN_Kr92;    // Binding energy of Kr-92 nucleus, MeV/c^2

// For Ba-142
A = 142;    // Mass number of Ba-142
Z = 56;    // Atomic number of Ba-142
N = A-Z;    // Neutron number of Ba-142
a5 = pec(N,Z);
M_Ba142 = Z*mp + N*mn - (a1*A - a2*A^(2/3) - a3*Z^2*A^(-1/3) - a4*(A-2*Z)^2/A +a5*A^(-1/2))/amu;    // Mass of Ba-142 nucleus
BPN_Ba142 = -8.4;    // Binding energy per nucleon of Ba-142, MeV/c^2
BE_Ba142 = M_Ba142*BPN_Ba142;    // Binding energy of Ba-142 nucleus, MeV/c^2
E = BE_Kr92 + BE_Ba142 - BE_U235;    // Energy released in the fission process, MeV
E_bar_fission = E/(M_U235*u);    // Energy released per kg in the fission reaction of U-235, Mev/kg
E_bar_fusion = E_DT/((2*mp+3*mp)*u);    // Energy released per kg in the deuterium/tritium fusion reaction, Mev/kg
E_ratio = E_bar_fusion/E_bar_fission;    // Ratio of fusion reaction energy to the fission reaction energy, MeV
printf("\nThe fusion reaction releases about %3.1f times the energy/kg released by the fission reaction", E_ratio);

// Result
// The fusion reaction releases about 4.2 times the energy/kg released by the fission reaction 