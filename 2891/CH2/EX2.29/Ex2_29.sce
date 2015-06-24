// Exa 2.29
clc;
clear;
close;
// given :
epsilon_0=8.854*10^-12 // permittivity in free space in F/m
mu_0=4*%pi*10^-7 //  permeability in free space in H/m
epsilon_r=1 // relative permittivity
mu_r=1 // relative permeability
epsilon=epsilon_r*epsilon_0 // permittivity
mu=mu_0*mu_r // permeability
E=100*sqrt(%pi) // magnitude of electric field in V/m
W_E=(1/2)*epsilon*E^2 // electric energy density of the wave
disp(W_E*10^9,"electric energy density of the wave in nJ/m^3:")
W_H=W_E // as the energy density is equal to that of magnetic field for a pla`ne travelling wave
W_T=W_E+W_H // total energy density
disp(W_H*10^9,"magnetic energy density of wave in nJ/m^3:")
disp(W_T*10^9,"Total energy density in nJ/m^3:")
