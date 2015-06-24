clc;
clear all;
N = 2.7e25;//no of atoms
e0 = 8.854e-12;//permittivity of vacume
r = 0.384e-9;//radius of Ar atom
xe = 4*%pi*e0*(r^3);//electronic polarisability of Ar
x = (N*xe)/(3*e0);//temporary variable
er = (1+2*x)/(1-x);//dielectric constant of Ar atom
disp('',er,'dielectric constant of Ar atom is:')
//Wrong answer printed in textbook... Checked in calculator
