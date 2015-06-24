clc;
clear all;
h = 6.62e-34; // Planck's constant in J.s
m = 9.1e-31 // Mass of electron in kg
nk =1;
nl = 1;
nm = 1;
a = 0.5e-10 // Width of cubical box in meter
E = (h^2*(nk^2+nl^2+nm^2))/(8*m*a^2*1.6e-19);//The lowest energy level will have energy
disp('eV',E,'The lowest energy level will have energy ');
