// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Turbomachinery Design and Theory,Rama S. R. Gorla and Aijaz A. Khan, Chapter 6, Example 14")
disp("Figure Ex613 shows the velocity triangles.")
disp("From the velocity diagram,")
disp("V2 = 1.2U")
disp("Ca2 = V2 cos(beta2)")
disp("    = 1.2Ucos70")
disp("    = 0.41U m/s")
disp("At mean diameter,")
disp("U = piDN/60 = 2piN(Dh + h)/(60*2)")
disp("where Dh is the rotor diameter at the hub and h is the blade height.")
disp("Substituting the value of U in the above equation,")
N = 440;//rpm
disp("Ca2 = 0.41*2*%pi*N*(14.5h+h)/(2*60) = 146.45h m/s")
disp("Annular area of flow is given by:")
disp("A = pih(Dh + h) = pih(14.5h + h)")
disp("A = 15.5pih^2")
disp("Specific volume of saturated steam at 0.90 bar, vg = 1.869m3/kg.")
disp("Then the specific volume of steam v = (1.869) * (0.95) = 1.776m3/kg.")
v = 1.776;
disp("The mass flow rate is given by:kg/s")
mrate = 6.8;//kg/kW h
P = 5.5;//MW
m = P*1000*mrate/3600//kg/s
h = (m*v/(146.45*15.5*%pi))^(1/3)
