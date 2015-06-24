// Exa 2.16
clc;
clear;
close;
// given :
H=2 // ampliutude of magnetic field in A/m
sigma=0 // conductivity
mu_0=4*%pi*10^-7 // permeability in free space in H/m
epsilon_0=8.854*10^-12 // permittivity in free space in F/m
mu=mu_0 // permeability in F/m
epsilon=4*epsilon_0 // permittivity in F/m
Eta_0=120*%pi // intrinsic impedence in free space in ohm
E=Eta_0*H // electric field in V/m
disp(E,"magnitude of electric field in V/m in free space:")
Eta=sqrt(mu/epsilon) // intrinsic impedence in ohm
E=Eta*H // magnitude of electric field
disp(E,"magnitude of electric field in V/m:")
