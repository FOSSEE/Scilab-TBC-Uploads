clc;
clear all;
h = 6.62*1e-34; // Planck's constant
m = 1e-9; // Mass of particle in kg
t = 100; //Time reqired by the particle to cross 1 mm distance
a = 1e-3 ; // Width of box in m
v = 1e-5; // Velocity of particle in m/s
E = (0.5*m*v^2);
n = sqrt(8*m*a^2*E/(h^2));//The quantum state
disp('',n,'The quantum state is ');
