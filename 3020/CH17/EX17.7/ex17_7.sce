clc;
clear all;
m=9.1e-31; // Mass of electron in Kg
e=1.6e-19; // Charge of electron
h=6.63e-34;//planck constant
Ef=3;//fermi energy in eV
Ed=0.01;//energy interval in eV
E1=Ef*e;//At ground state
E2=E1+(Ed*e);
x=(2*((E2^(3/2))-(E1^(3/2))))/3;//temporary variable
n=(4*%pi*x*((2*m)^(3/2)))/(h^3);//no of states between the energy level
disp('',n,'no of states between the energy level is:')
// Asbolutely wrong answer in book... Checked in calculator
