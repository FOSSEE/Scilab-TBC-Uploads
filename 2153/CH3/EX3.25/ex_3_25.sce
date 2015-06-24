//Example 3.25 : lattice constant
clc;
clear;
close;
//given data :
format('v',6)
n=2;
A=55.8;
N=6.023*10^26; // avogadro's number in /kg-mole
b=7.87*10^3;// in kg/m^3
a=((A*n)/(N*b))^(1/3);
disp(a*10^10,"lattice constant,a(angstrom)")
