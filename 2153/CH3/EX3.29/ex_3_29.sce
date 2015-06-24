//Example 3.29 : the number of atoms
clc;
clear;
close;
//given data :
d=7.87;//in g/cm^3
A=55.85;
a=2.9*10^-8;// in cm
N=6.02*10^23;//avogadro's number
n=(d*a^3*N)/A;
disp(round(n),"the number of atom,n = ")
