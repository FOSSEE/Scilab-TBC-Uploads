clc;clear;
//Example 9.8

//given data
h=6.625*10^-34;//Plank's constant
m=9.12*10^-31;//mass of electron in kg
L=2.5*10^-10;
e=1.6*10^-19;//the charge on electron in C

//calcualtions
n=1;
E1=n^2*h^2/(8*m*L^2*e);
disp(E1,'E1 in eV');
n=2;
E2=4*E1;
disp(E2,'E2 in eV');
n=3;
E3=9*E1;
disp(E3,'E3 in eV');