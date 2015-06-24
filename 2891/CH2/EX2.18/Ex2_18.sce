//Exa 2.18
clc;
clear;
close;
// given :
lambda=0.25 // wavelength in m
v=1.5*10^10 // velocity of propagation of wave in cm/sec
v=1.5*10^8 // velocity of propagation of wave in m/sec
f=v/lambda // frequency in Hz
disp(f/10^6,"frequecy in MHz:")
epsilon_0=8.854*10^-12 // permittivity in free space in F/m
mu_0=4*%pi*10^-7 //  permeability in free space in H/m
mu=mu_0 // permeability in H/m
v_0=3*10^8 // speed of light in m/s
// formula : v=1/(mu*epsilon)=1/(mu_0*epsilon_0*epsilon_r)=v_0/sqrt(epsilon_r)
epsilon_r=(v_0/v)^2 // relative permittivity
disp(epsilon_r,"relative permittivity:")


//note : answer in the book is wrong.
