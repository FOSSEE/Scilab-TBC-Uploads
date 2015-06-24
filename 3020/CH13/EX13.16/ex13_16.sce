clc;
clear all;
a = 0.405e-9; // Lattice constant in meters
t = 0.005e-2; // Thickness of Al foil in meters
sl = 25e-4; // Side length of the Al foil in meters
n = (t*sl)/a^3; // Number of atoms in the Al foil
disp('',n,'The number of atoms in the Al foil is')
// Wrong answer in the textbook... Chcecked in calculator also
