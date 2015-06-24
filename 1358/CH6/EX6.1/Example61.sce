// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 6, Example 1")
disp("From saturated steam tables, enthalpy of saturated vapor at 2 MPa:")
disp("Enthalpy in kJ/kg")
h1 = 2799.5
hg = h1
disp("Entropy in kJ/kgK")
s1 = 6.3409
sg = s1
disp("Since the expansion is isentropic, s1 = s2: i.e., s1 = s2 = 6.3409 = sf2 +x2sfg2, where x2 is the dryness fraction after isentropic expansion, sf2 is the entropy of saturated liquid at 0.2MPa, sfg2 is the entropy of vaporization at 0.2 MPa. Using tables:")
x2 = (sg - 1.5301)/5.5970
disp("h2")
hf2 = 504.7;
hfg2 = 2201.9;
disp("h2 in kJ/kg")
h2 = hf2+x2*hfg2
disp("Using the energy equation:C2 in m/s")
C2 = (2*(h1-h2)*1000)^0.5
