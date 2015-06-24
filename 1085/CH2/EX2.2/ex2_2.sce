//Exam:2.2
clc;
clear;
close;
e=1.6*10^(-19);//electron charge(in C)
m=9.1*10^(-31);//mass of electron(in Kg)
E_o=8.854*10^(-12);//permittivity of free space
h=6.625*10^(-34);//Planck constant
n=1;//Orbit number
Z=1;//atomic number
pi=22/7;
r_1=(E_o*h^2)/(pi*m*e^2);//first orbit radius of hydrogen atom
disp(r_1,'first orbit radius of hydrogen atom(in m)=');
Freq=m*(Z^2)*(e^4)/(4*(E_o^2)*(n^3)*h^3);//
disp(Freq,'Orbital frequency of electron(in Hz)=');