clc;
clear all;
er=1.0024;//relative permittivity
N=2.7e25;//no of atoms
e0=8.85e-12;//permittivity of vacume
xe=e0*(er-1)/N;//polarisability of argon atom 
disp('F m^2',xe,'polarisability of argon atom is:')
