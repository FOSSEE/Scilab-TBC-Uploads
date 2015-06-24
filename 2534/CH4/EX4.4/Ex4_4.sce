//Ex4_4
clc
A = 4*10^-6
W = 1.5*10^-6
apsilent_r = 16//for germanium
apsilent_not = 8.85*10^-12//permitivity in vaccum
disp("A = "+string(A)+"m_sq")//cross sectional are
disp("W = "+string(W)+"m")//width of depletion layer
disp("apsient_r = "+string(apsilent_r))//relative permittivity
disp("CT = apsilent*A/W")//transition capacitance
disp("   = "+string(apsilent_r*apsilent_not*A/W)+"F")


// note: units given in textbook in the solution for cross sectional area and width are misprinted.
