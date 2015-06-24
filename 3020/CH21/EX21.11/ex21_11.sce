clc;
clear all;
er=1.0000684;//dielectric constant of He gas at NTP
N=2.7e25;//no of atoms
e0=8.85e-12;//permittivity of vacume
xe=e0*(er-1)/N;//polarisability of He atom 
disp('F m^2',xe,'polarisability of He atom is:')
