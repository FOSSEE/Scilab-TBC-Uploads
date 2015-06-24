//Ex11_14
clc
Pac = 3.2*10^-3//output power
Pd = 27*10^-3//power dissipated collector junction
P_eta = Pac/Pd//power efficiency
disp("Pac = "+string(Pac)+"W")
disp("Pd = "+string(Pd)+"W")
disp("P_eta = Pac/Pd = "+string(P_eta*100)+"%")
