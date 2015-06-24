//Exam:2.5
clc;
clear;
close;
m=9.1*10^(-31);//electron mass (in Kg)
Z=1;//atomic number
e=1.6*10^(-19);//electron charge(in C)
E_o=8.25*10^(-12);//permittivity of free space
n=1;//first bohr orbit
h=6.63*10^(-34);//planck constant
R_ps=m*(e^4)/(4*(E_o^2)*(h^3));//number of revolutions per second
disp(R_ps,'revolutions per second of an electron in the bohr orbit of hydrogen atom=');