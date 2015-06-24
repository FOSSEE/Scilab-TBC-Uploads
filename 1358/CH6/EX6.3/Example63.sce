// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 6, Example 3")
P1 = 7.5;//MPa
h1 = 3404.3;//kJ/kg
s1 = 6.7598;//kJ/kg K
disp("(h1 and s1 from superheated steam tables)")
disp("At the exit state, P2 > Pc = 0.545*7.5 = 4.0875 MPa; and therefore the nozzle is convergent. State 2 is fixed by P2 = 5MPa, s1 = s2 = 6.7598 kJ/kgK")
disp("T2 = 4358K, v2 = 0.06152m3/kg, h2 = 3277.9 kJ/kg (from the superheated steam tables or the Mollier Chart).")
disp("The exit velocity:")
h2 = 3277.9;//kJ/kg
C2 = (2*1000*(h1-h2))^0.5
disp("Using the continuity equation, the exit area is")
m = 2.8;
v2 = 0.06152;
A2 = m*v2/C2
