// Exa 2.15
clc;
clear;
close;
// Given data
miu_n= 1300;// in cm^2/Vs
q=1.6*10^-19;// in C
ni= 4.3*10^-6;// in /cm^3
V= 1;// in volt
L=8;// in cm
A=0.8*0.8;// in cm^2
I=4*10^-3;// in A
// R= rho*L/A = V/I
R= V/I;// in Ω
sigma= L/(R*A);// in (Ωcm)^-1
// sigma= q*n*miu_n
n= sigma/(q*miu_n);
N_D= n;
disp(N_D,"The value of N_D is :")
// Part (b)
d=L;
E= V/d;
vd=miu_n*E;// in cm/s
disp(vd,"Drift velocity in cm/s is : ")
