// Exa 17.18

clc;
clear;

// Given

// Capacitive Transducer
d = 0.05; // plate separation in mm
C = 5*10^-12; // Capacitence in farad
dell_C = 0.75*10^-12; // change in capacitence in farad

// Solution

// C = e*A/d;
eA = C*d;

//Now,
dell_x = eA/dell_C;
printf('The displacment that caused a change in capacitence is %.3f mm \n',dell_x);
