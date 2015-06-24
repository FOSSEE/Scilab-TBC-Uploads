//chapter 5
//example 5.13
//Calculate velocity of electron
//page 107-108
clear;
clc;
//given
r=0.53E-10; // in m (radius of first Bohr orbit)
h=6.6E-34; // in J-s (Planck's constant)
m=9.1E-31; // in Kg (mass of electron)
n=1; // First Bohr orbit
pi=3.14; // value of pi used in the solution
//calculate
// Since 2*pi*r=n*lambda  and  lambda=h/(m*v)
//Threfore we have v=h*n/(2*pi*r*m)
v=h*n/(2*pi*r*m); //calculation of velocity
printf('\nThe velocity of electron is\tv=%1.1E m/s',v);
