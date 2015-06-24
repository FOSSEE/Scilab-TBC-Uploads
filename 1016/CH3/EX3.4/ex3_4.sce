clc;clear;
//Example 3.4

//given values
Z=1;//atomic number of hydrogen
e=1.6*10^-19;//electron charge in C
h=6.625*10^-34;//plank's constant in J-s
m=9.1*10^-31;//mass of an electron in kg
Eo=8.854*10^-12;//absolute permitivity of free space in F/m
n=1;//ground state

//Calculations
f=(m*Z^2*e^4)/(4*Eo^2*h^3);
disp(f,'the frequency(in Hz) is')