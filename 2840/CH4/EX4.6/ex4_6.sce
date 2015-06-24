clc;
a=2.9*1e-8; //in cm
M=55.85;//atomic mass
density=7.87 //in g/cc
N=6.023*1e23;
n=(a^3*N*density)/M;//Number of atoms per unit cell
disp(n,'Number of atoms per unit cell =');
//slight variation in ans than book.. checked in calculator also
