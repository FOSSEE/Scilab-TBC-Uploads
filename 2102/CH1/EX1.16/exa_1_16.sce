// Exa 1.16
clc;
clear;
close;
// Given data
q=1.6*10^-19;// in C
n=4*10^22;// in /m^3
ni= 2.4*10^19;// in /m^3
miu_n= 3500;// in cm^2/vs
miu_n= miu_n*10^-4;// in m^2/vs
// Formula n*p= ni^2
p= ni^2/n;// in m^-3
disp(p,"Hole concentration in m^-3 is : ")
sigma=q*n*miu_n;// in (Ω-m)^-1
disp(sigma,"The conductivity of the extrinsic semiconductor in (Ωm)^-1 is :")

// Note : There is miss print in the printed value of p and also calculation error in evaluating the value of p . So the answer in the book is wrong
