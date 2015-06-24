//Exam:2.8
clc;
clear;
close;
h=6.626*10^-34;//planck constant
E_o=8.825*10^-12;//permittivity of free space
e=1.6*10^-19;//electron charge(in C)
n=1;//first bohr orbit
Z=1;//atomic number
v=Z*(e^2)/(2*E_o*n*h);//velocity of electron in hydrogen atom in bohr first orbit
disp(v,'velocity of electron in hydrogen atom in bohr first orbit(in meter/sec)=');