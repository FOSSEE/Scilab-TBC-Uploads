// Scilab code Ex2.7:  Pg.50 (2005)
clc; clear;
u = 1.660e-27;   // Atomic mass unit
M_U = 236.045563;   // Atomic mass of Uranium, u
M_Rb = 89.914811;   // Atomic mass of Rubidium, u
M_Cs = 142.927220;   // Atomic mass of Caesium, u
m_n = 1.008665;    // Mass of neutons, u

// Part (a)
printf("\nU(92,235) --> Rb(37,90) + Cs(55,143) + 3n(0,1)");
printf("\nSo three neutrons are produced per fission.\n");

// Part (b)
delta_M = (M_U - (M_Rb + M_Cs + 3*m_n))*u;   // Combined mass of all products, kg
printf("\nCombined mass of all products = %6.4fe-28 kg\n", delta_M*1e+28);

// Part (c)
// For simplification let velocity of light = 1 m/s
c = 1;   // Velocity of light, m/s
// Since 1u = 931.5 MeV/(c^2), therefore
Q = (delta_M/u)*931.5*(c^2);    // Energy given out per fission event, MeV
printf("\nEnergy given out per fission event = %5.1f MeV\n", Q);

// Part (d)
N = ((6.02e23)*1000)/236;   // Number of nuclei present
efficiency = 0.40;
E = efficiency*N*Q*(4.45e-20);   // Total energy released, kWh
printf("\nTotal energy released = %4.2fe+06 kWh\n", E*1e-06);

printf("\nThis amount of energy will keep a 100-W lightbulb burning for %d years", E*1000/(100*24*365));

// Result
// U(92,235) --> Rb(37,90) + Cs(55,143) + 3n(0,1)
// So three neutrons are produced per fission.
// Combined mass of all products = 2.9471e-28 kg
// Energy given out per fission event = 165.4 MeV
// Total energy released = 7.51e+06 kWh
// This amount of energy will keep a 100-W lightbulb burning for 8571 years 
