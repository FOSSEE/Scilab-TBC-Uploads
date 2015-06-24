clc();
clear;
//Given :
a = 2.87; // lattice constant in A
mu = 4; // 4 Bohr magnetons/atom
// BCC = 2 atoms/unit cell , 1 A = 1.0*10^-10 m
N = 2/(2.87*10^-10)^3; // atoms/m^3
//1 Bohr magneton = 9.27*10^-24 Am^2
Msat = N*mu*9.27*10^-24;// Saturation in magnetisation in A/m
printf(" Saturation Magnetisation = %.2f x 10^6 A/m",Msat*10^-6);
