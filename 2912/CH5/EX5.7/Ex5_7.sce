//chapter 5
//example 5.7
//Calculate velocity and kinetic energy
//page 105
clear;
clc;
//given
lambda=1.66E-10; // in m (wavelength)
m=9.1E-31; // in Kg (mass of electron)
h=6.626E-34; // in J-s (Planck's constant)
e=1.6E-19; // in C (charge on electron)
//calculate
// Since lambda=h/(m*v)
// Therefore we have
v=h/(m*lambda); // calculation of velocity
printf('\nThe velocity of electron is \tv=%1.3E m/s',v);
K=m*v^2/2;//calculation of kinetic energy
printf('\nThe kinetic energy is \tK=%1.4E J',K);
K=K/e; // changing unit from J to eV
printf('\n\t\t\t=%.3f eV',K);
// Note: The answer in the book for kinetic energy is wrong due to calculation mistake
