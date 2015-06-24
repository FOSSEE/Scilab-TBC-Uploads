clc;
clear all;
er=12;//relative dielectric constant of material
N=5e28;//no of atoms
e0=8.85e-12;//permittivity of vacume
xe=e0*(er-1)/N;//polarisability of element
disp('F m^2',xe,'polarisability of element is:')
