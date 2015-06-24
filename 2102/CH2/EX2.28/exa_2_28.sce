// Exa 2.28
clc;
clear;
close;
// Given data
format('v',13)
Eg= 0.72;// in eV
Ef= Eg/2;//in eV
K= 8.61*10^-5;// in eV/K
T=300;//in K
nc= 1;
n= 1+%e^((Eg-Ef)/(K*T));
ncBYn= nc/n;
disp(ncBYn,"The fraction of the total number or electrons is : ")
