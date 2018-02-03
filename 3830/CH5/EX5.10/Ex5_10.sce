// Exa 5.10

clc;
clear;
 
// Given

Va = 2000; // voltage applied to anodes(V)
l = 50*10^-3; // length of horizontal plates(m)
m = 9.1*10^-31; // mass of electron in kg
e = 1.6*10^-19; // velocity of electron in m/s
// Max transit time is T/4

// Solution

V = sqrt(2*Va*e/m);
Fc = V/(4*l);
printf(' The velocity of electron = %.3f * 10^8 m/s \n',V*10^-8);
printf('  The cutoff frequency = %.3f MHz \n',Fc/10^6);
