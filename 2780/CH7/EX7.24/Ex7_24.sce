clc
//to calculate energy of an electron
n=1 //least energy of the particle 
h=6.63*10^-34 //planck's constant in Js
m=9.11*10^-31 //mass of electron in kg
a=10^-10 //width in angstrom
E=(n^2)*(h^2)/(8*m*(1.602*10^-19)*a^2)
disp("energy of an electron moving in one dimension in an infinitely high potential box is E="+string(E)+"eV")
//the answer is given wrong in the book E=5.68 eV
