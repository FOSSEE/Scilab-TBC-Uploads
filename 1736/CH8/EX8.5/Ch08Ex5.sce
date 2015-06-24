// Scilab code Ex8.5 Page:242 (2006)
clc; clear;
chiA_He = 1.9e-06;    // Atomic susceptibility of helium, cm cube per mole
chiA_Cu = 18e-06;    // Atomic susceptibility of Copper, cm cube per mole
Q_sp = 1.77e+07;    // Specific charge of an electron, emu
Ne = 9650;    // Charge of a gram ion, emu
Z_He = 2;    // Atomic number of helium atom
Z_Cu = 29;    // Atomic number of copper atom
R_He = sqrt(abs(-6*chiA_He/(Ne*Z_He*Q_sp)));    // Magnetic susceptibility of helium atom, cgs units
R_Cu = sqrt(abs(-6*chiA_Cu/(Ne*Z_Cu*Q_sp)));    // Magnetic susceptibility of copper atom, cgs units
printf("\nAtomic radius of helium = %4.2e cm", R_He);
printf("\nAtomic radius of copper = %4.2e cm", R_Cu);

// Result 
// Atomic radius of helium = 5.78e-009 cm
// Atomic radius of copper = 4.67e-009 cm  
