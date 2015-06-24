// Exa 2.14
clc;
clear;
close;
// given :
f=100 // frequency in MHz
f=100*10^6 // frequency in Hz
v_0=3*10^8 // speed of light in m/s
// formula : Gamma=%i*omega*sqrt(mu_0*epsilon_0)=%i*omega/v_0 =(%i*2*pi*f)/v_0
Gamma=%i*2*%pi*f/v_0 //propagation constant
disp(Gamma,"propagation constant in m^-1:")
funcprot(0)
