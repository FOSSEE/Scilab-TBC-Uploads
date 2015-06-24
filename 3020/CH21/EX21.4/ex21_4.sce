clc;
clear all;
xe=0.35e-40;//electronic polarisability in F m^2
N=2.7e25;//no of atoms
e0=8.854e-12;
//x=N*xe/(3*e0)
//er=1+2x/(1-x)
x=N*xe/(3*e0);//temporary variable
er=(1+2*x)/(1-x);//dielectric constant of Ne gas
disp('',er,'dielectric constant of Ne gas is:')

