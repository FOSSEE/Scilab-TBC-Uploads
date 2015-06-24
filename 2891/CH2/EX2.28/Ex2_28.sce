// Exa 2.28
clc;
clear;
close;
// given :
epsilon_0=8.854*10^-12 // permittivity in free space in F/m
mu_0=4*%pi*10^-7 //  permeability in free space in H/m
epsilon_r=4 // relative permittivity
mu_r=1 // relative permeability
epsilon=epsilon_r*epsilon_0 // permittivity
mu=mu_0*mu_r // permeability
H=5 // magnitude of magnetic field in mA/m
H=5*10^-3 // magnitude of magnetic field in A/m
eta=sqrt(mu/epsilon)// intrinsic impedence in ohm
E=H*sqrt(mu/epsilon) // magnitude of electric field
P_av=E^2/(2*eta) // average power
W_E=epsilon*E^2 // maximum energy density of the wave
disp(P_av*10^6,"Average power in micro*w/m^2:")
disp(W_E*10^12,"maximum energy density of the wave in PJ/m^3:")


// note: P_av is = 2353.75 in book but it is 2354.58 correctly calculated by scilab.
