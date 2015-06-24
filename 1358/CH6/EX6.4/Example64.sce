// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 6, Example 4")
disp("Critical pressure for maximum mass flow is given by Fig. Ex64")
disp("Pc is critical pressure in MPa")
P1 = 0.8;//MPa
n = 1.135;//index
Pc = P1*(2/(n+1))^(n/(n-1))
P2 = Pc;
disp("From the Mollier chart:")
disp("h1 = 2769 kJ/kg")
disp("h2 = 2659 kJ/kg")
disp("h3 = 2452 kJ/kg")
h1 = 2769;
h2 = 2659;
h3 = 2452;
disp("Enthalpy drop from 0.8 MPa to 0.15 MPa:")
Deltah13 = h1-h3
disp("Enthalpy drop from 0.8 MPa to 0.462 MPa:")
Deltah12 = h1-h2
disp("Dryness fraction:")
x2 = 0.954
x3 = 0.902
disp("The velocity at the exit in m/s")
C3 = (2*1000*Deltah13)^0.5
disp("The velocity at the throat in m/s")
C2 = (2*1000*Deltah12)^0.5
disp("Mass discharged at the throat")
disp("m2 = A2C2/x2vg2")
disp("Mass discharged at the exit")
disp("m3 = A3C3/x3vg3")
disp("A3C3/x3vg3 = A2C2/x2vg2")
disp("A3/A2 = (C2/C3) * (x3vg3/x2vg2)")
disp("Area Ratio A3/A2 = Ar")
vg3 = 1.1593;
vg2 = 0.4038;
Ar = C2*x3*vg3/(C3*x2*vg2)
