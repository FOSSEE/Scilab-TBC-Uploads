//Exam:2.7
clc;
clear;
close;
m=9.11*10^-31;//mass of electron(in Kg)
Z=1;//atomic number
n=1;//first bohr orbit
E_o=8.854*10^-12;//permittivity of free space
h=6.62*10^-34;//planck constant
e=1.6*10^-19;//electron charge(in C)
E_k=(m*(Z^2)*(e^4))/(8*(E_o^2)*(n^2)*(h^2));//Kinetic energy(in joule)
E=E_k/e;//Kinetic energy(in eV)
E_t=-13.6*(Z^2/n^2);//Total Energy(in eV)
E_p=E_t-E;//Potential energy(in eV)
disp(E_t,'Total energy(in eV)=');
disp(E,'kinetic energy(in eV)=');
disp(E_p,'potential energy(in eV)=');