clc;
T=250; // Evaporation teemperature of water in degree celcius
Ta=1250; // Initial temperature of combustion gas in degree celcius
Tb=350; // Final temperature of combustion gas in degree celcius
C=1.08; // Specific heat of gas in kJ/kg K
T0=30; // temperature of Surroundings in degree celcius
hfg=1716.2; // Enthalpy of evaporation at T temperature
del_SH2O=hfg/(T+273); // Entropy change of water
mgas=hfg/(C*(Ta-Tb)); // Mass of gas
del_Sgas=mgas*C*log ((Tb+273)/(Ta+273)); // Enthalpy change of gas
del_Stotal=del_SH2O+del_Sgas; // Total entropy change
l_AE=(T0+273)*del_Stotal; // Loss of available energy
disp ("kJ",l_AE,"Loss of available energy = ");
