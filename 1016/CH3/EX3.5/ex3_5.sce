clc;clear;
//Example 3.5

//given data
Z=1;
n=1;
e=1.6*10^-19;//the charge on electron in C
h=6.625*10^-34;//Plank's constant
Eo=8.854*10^-12;//absolute permitivity of free space in F/m
m=9.12*10^-31;//mass of electron in kg

//calculations
v=Z*e^2/(2*Eo*n*h);
disp(v,'velcocity in m/s');
E=-m*Z^2*e^4/(8*(Eo*n*h)^2);
disp(E,'energy of hydrogen atom in J');
f=m*Z^2*e^4/(4*Eo^2*(n*h)^3);
disp(f,'frequecy in Hz')