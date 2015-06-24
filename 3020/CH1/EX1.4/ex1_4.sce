clc;
clear all;
n = 2.4e10; //Rigidity Modulus in Newton per square meters
l = 30e-2; // Thicknes0s in meter square
a = 10e-4; // Surface area in meter square
deltal = 1.5e-2; // Displacement in meters
SF = (n*a*deltal)/l;// Shearing Force
disp('N',SF,'Shearing force')
// // there is Variation in answer.In textbook there is mistake.checked in calculator also.

