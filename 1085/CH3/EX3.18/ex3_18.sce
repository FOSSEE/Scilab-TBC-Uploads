//Exam:3.18
clc;
clear;
close;
A=55.8;//atomic weight of Fe
n=2;//number of atoms per unit cell
N=6.02*10^(26);//Avogadro's number
p=7.87*10^3;//density of Fe(in kg/m^3)
a=((A*n/(N*p))^(1/3))*10^10;//Value of lattice constant
disp(a,'Value of lattice constant(in A)=');