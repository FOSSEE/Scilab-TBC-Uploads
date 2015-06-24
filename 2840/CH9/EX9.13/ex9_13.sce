clc;
clear all;
a = 0.2e-9 // Width of box in meter
m = 9.1e-31; // Mass of electron in kg
h = 6.62e-34; // Planck's constant in Js
c = 3e8; // Velocity of light in vaccum
E5 = 230*1.6e-19 //  Energy of a particle in Volts in 5th antinode
n = 5;
E1 = E5/(n^2);
m = (h^2)/(8*E1*a^2);//Mass of electron 
disp('kg',m,'Mass of electron is ');
