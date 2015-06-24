// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 6, Example 5")
disp("At the state point 2, the dryness fraction is 0.85 and the pressure is 0.1 MPa.")
disp("This problem can be solved easily by the Mollier chart or by calculations.")
disp("Enthalpy and entropy may be determined using the following equations:")
disp("h2 = hf2 + x2hfg2 and s2 = sf2 + x2sfg2;")
hf2 = 417.46
x2 = 0.85
hfg2 = 2258
h1 = hf2+x2*hfg2
sf2 = 1.3026
sfg2 = 6.0568
s2 = sf2+x2*sfg2
disp("Since s1 = s2, the state 1 is fixed by s1 = 6.451 kJ/kg K, and point 1 is at the dry saturated line.")
disp("Therefore pressure P1 may be determined by the Mollier chart or by calculations: i.e.: P1 = 1.474 MPa.")
disp("Elthalpies are in kJ/kg, entropy in kJ/kgK and Pressure in MPa")
