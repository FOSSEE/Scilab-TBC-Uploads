// Example 2.14: (a) Change in capacitance
//               (b) Change in capacitance
clc, clear
C=4e-12; // Depletion capacitance in farads
V=4; // in volts
K=C*sqrt(V); // a constant

disp("Part (a)");
V=4+0.5; // in volts
C_new=K/sqrt(V); // in farads
deltaC=C_new-C; // Change in capacitande in farads
deltaC=deltaC*1e12; // Change in capacitande in pico-farads
disp(deltaC,"Change in capacitance (pF) =");

disp("Part (b)");
V=4-0.5; // in volts
C_new=K/sqrt(V); // in farads
deltaC=C_new-C; // Change in capacitande in farads
deltaC=deltaC*1e12; // Change in capacitande in pico-farads
disp(deltaC,"Change in capacitance (pF) =");