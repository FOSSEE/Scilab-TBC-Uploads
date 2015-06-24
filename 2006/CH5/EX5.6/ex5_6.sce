clc;
tS=-10; // initial temperature of ice in degree celcius
ts=0; // Melting temperature of ice in degree celcius
Cs=1.94; // Specific heat of ice in kJ/kg k
m=1000; // Mass of ice in kg
tF=10; // Temperature of water after 24 hours in degree celcius
tf=0; // Freezing temperature of water in degree celcius
Cf=4.1868; // Specific heat of water in kJ/kg K
hsg=335; // Latent heat of fusion of ice in kJ/kg
Q=m*(Cs*(ts-tS)+hsg+Cf*(tF-tf)); // Heat gain of water
Q_dot=Q/(24*3600); // Rate of cooling
disp ("kW",Q_dot,"Rate of cooling = ");
