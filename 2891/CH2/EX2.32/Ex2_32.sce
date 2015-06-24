// Exa 2.32
clc;
clear;
close;
// given :
sigma=5.8*10^7 // conductivity in mho/m
f=2 // frequency in MHz
f=2*10^6 // frequency in Hz
omega=2*%pi*f // angular frequency in rad/sec
E=2 // magnitude of electric field in mV/m
E=2*10^-3 // magnitude of electric field in V/m
epsilon_0=8.854*10^-12 // permittivity in free space in F/m
mu_0=4*%pi*10^-7 //  permeability in free space in H/m
epsilon_r=1 // relative permittivity
mu_r=1 // relative permeability
epsilon=epsilon_r*epsilon_0 // permittivity
mu=mu_0*mu_r // permeability
eta=sqrt(mu*omega/sigma) // intrinsic impedence in ohm
P_av=(1/2)*E^2/eta // average power density anbsorbed by copper
disp(P_av*1000,"average power density anbsorbed by copper in mW/m^2:")
