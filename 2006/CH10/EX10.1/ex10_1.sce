clc;
m=100; // Mass of water in kg
T0=90; // Initial temperature of water in degree celcius
T=30; // temperature of Surroundings in degree celcius
C=4.1868; // Specific heat in kJ/kg K
AE=m*C*((T0-T)-(T+273)*log ((T0+273)/(T+273))); // Available energy
Q=m*C*(T0-T); // Heat supplied
UE=Q-AE; // Unavailable energy
disp ("kJ",AE,"Available energy =");
disp ("kJ",UE,"Unavailable energy = ","kJ",Q,"Heat supplied = ");
