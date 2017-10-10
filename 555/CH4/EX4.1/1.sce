// Implementation of example 4.1
// Basic and Applied Thermodynamics by P.K.Nag
// page 72

clc
clear

// First law of Thermodynamics for stationary system is dQ = dU+W
dQ=-37.6 // (heat transfer in kJ)
v1=0.3 // (initial volume in m^3)
p=0.105 // (pressure in MPa)
v2=0.15 // (final volume in m^3)

W=p*(v2-v1)*1000;
// now according to first law
dU=W-dQ;
printf("Change in internal energy of gas is = %.2f kJ",dU);
// end