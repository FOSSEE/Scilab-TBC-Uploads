//Example 8.4 // Dipole moment
clc;
clear;
//given data :
E=100;// Field Intensity in V/m
k=1.000074;// dielectric contant
e=8.85D-12;// permitivity in Farad/m
p=22.4D-3;// dipole moment
N=6D23/(22.4D-3);// no. of atoms per unit volume at NTP
p=e*(k-1)*E/N;//  dipole moment in C-m
disp(p,"total moment in C-m")
