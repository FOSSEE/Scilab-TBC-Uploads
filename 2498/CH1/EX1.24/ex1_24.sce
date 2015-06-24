// Exa 1.24
clc;
clear;
close;
format('e',9)
// Given data
Na = 5 * 10^15;// in cm^-3
Nc = 2.8 * 10^19;// in cm^-3
E_CminusE_F = 0.215;// in eV
KT = 26* 10^-3;// in eV
// The concentration of donors atoms 
Nd = Na + Nc * (%e^( -E_CminusE_F/KT ));// in cm^-3
disp(Nd,"The concentration of donors atoms in cm^-3 is");
