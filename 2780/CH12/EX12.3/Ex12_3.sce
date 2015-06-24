clc
//to calculate electric field at a point on earth vertically below the wire
lambda=10^-4 //wavelength in coulomb/m
r=4 //radius in m
epsilon0=8.854*10^-12
E=2*lambda/(4*%pi*epsilon0*r)
disp("electric field at a point on earth vertically below the wire is E="+string(E)+"N/coulomb")
