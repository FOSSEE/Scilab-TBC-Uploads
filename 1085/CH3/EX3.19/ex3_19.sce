//Exam:3.19
clc;
clear;
close;
a=2.9*10^(-10);//lattice parameter(in m)
A=55.8;//atomic weight of Fe
N=6.02*10^(26);//Avogadro's number
p=7.87*10^3;//density of Fe(in kg/m^3
n=(a^3)*N*p/A;//Numbers of atoms per unit cell
disp(floor(n),'Numbers of atoms per unit cell=');