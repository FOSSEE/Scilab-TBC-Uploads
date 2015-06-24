clc;
clear all;
Ed=0.01;//difference between energy level to fermi level
Ed1=Ed*1.6e-19;//convertion from eV to J
T=200;//temperature in kelvin
k=1.38e-23;//boltzmann constant
x=Ed1/(k*T);//temporary variable
F=1/(1+exp(x));//fermi distribution function
disp('',F,'fermi distribution function is:')

