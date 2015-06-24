//Scilab Code Ex2.9 :Page:82 (2011) 
clc;clear;
n = 1;
m0 = 9.1e-031;....// Mass of the electron, kg
a = 1e-10;....// Width of the box, m
h = 6.63e-034;....// Planck's constant, J-s
E = n^2*h^2/(8*m0*a^2);
printf("\n The energy of the electron moving in 1D infinetly high potential box = %5.2e J", E);

// Result
//  The energy of the electron moving in 1D infinetly high potential box = 6.04e-18 J 
