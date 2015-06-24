//Exam:2.6
clc;
clear;
close;
n=1;//first bohr orbit
Z=1;//atomic number
m=9.1*10^(-31);//electron mass in Kg.
e=1.6*10^(-19);//electron charge(in C)
E_o=8.85*10^(-12);//permittivity of free space
h=6.63*10^(-34);//planck constant
v_n=m*(Z^2)*(e^4)/(4*(E_o^2)*(h^3)*(n^3));//orbital frequency of an electron in the first bohr orbit in a hydrogen atom
disp(v_n,'orbital frequency of an electron in the first bohr orbit in a hydrogen atom(in Hz)=');