// Exa 2.12
clc;
clear;
close;
// Given data
ni= 1.45*10^10;// in /cm^3
q=1.6*10^-19;// in C
miu_n= 1300;// in cm^2/Vs
density= 5*10^22;// density of silicon atom in /cm^3
N_D= density/10^12;
n=N_D;
// n*p= ni^2
p= ni^2/n;//in /cm^3
sigma= q*n*miu_n;// in (Ωcm)^-1
rho= 1/sigma;// in Ωcm
disp(rho,"Resistivity of silicon in Ωcm is : ")

// Note: The value of n is putted wrong (5*10^14 at place of 5*10^10) to evaluate the value of sigma. So the answer in the book is wrong .
