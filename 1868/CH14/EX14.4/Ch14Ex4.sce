// Scilab code Ex14.4: Pg 513 (2005)
clc; clear;
m = 1;   // Mass of Uranium taken, kg
Q = 208;   // Disintegration energy per event, MeV
A = 235;   // Mass number of Uranium
N = (6.02e+23*m)/A;   // Number of nuclei
E = N*Q;    // Disintegration energy, MeV
printf("\nThe total energy released if %1d kg of Uranium undergoes fission = %4.2fe+26 MeV", m, E*1e-23);

// Result
// The total energy released if 1 kg of Uranium undergoes fission = 5.33e+26 MeV 