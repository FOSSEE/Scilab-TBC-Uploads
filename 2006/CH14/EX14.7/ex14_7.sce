clc;
//From table 14.2 at 25 oC and 1 atm for C8H8
del_Ho=-2039.7; // LHV in MJ/kmol
// Combustion equation is C3H8+ 5O2 +18.8N2 → 3CO2 +4H2O +18.8N2
// From table 14.3
h333_C3H8=2751; // h333_h298 of C3H8 in kJ/kmol
h333_O2=147; // h333_h298 of O2 in kJ/kmol
h333_N2=145; // h333_h298 of N2 in kJ/kmol
h1333_CO2=52075; // h1333_h298 of CO2 in kJ/kmol
h1333_H2O=32644; // h1333_h298 of H2O in kJ/kmol
h1333_N2=32644; // h1333_h298 of N2 in kJ/kmol
M=44; // molecular mass of C3H8
Ha_H1=h333_C3H8+5*h333_C3H8+18.8*h333_N2; // The enthalpy differences
Hb_H2=3*h1333_CO2+4*h1333_H2O+18.8*h1333_N2; // The enthalpy differences
Q=(del_Ho+Hb_H2/1000-Ha_H1/1000)/M; // Heat transfer from combustion chamber
disp ("MJ/kg C3H8",abs (Q),"Heat transfer from combustion chamber =");
