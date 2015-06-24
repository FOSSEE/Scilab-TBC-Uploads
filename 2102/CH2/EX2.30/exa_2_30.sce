// Exa 2.30
clc;
clear;
close;
// Given data
e=1.6*10^-19;// in C
miu_e= 0.0032;// in m^2/v-s
sigma= 5.8*10^7;// in s/m
E= 20*10^-3;// in V/m
d=0.002;// in m
Area= %pi*d^2/4;// in m^2

// Part (a)
n= sigma/(e*miu_e);// per m^3
disp(n,"The charge density per meter cube is : ")

// Part (b)
J= sigma*E;// in A/m^2
disp(J,"Current density in A/m^2 is : ")

// Part (c)
I= J*Area;// in A
disp(I,"Current flowing in the wire in ampere is : ")

// Part (d)
v=miu_e*E;// in m/sec
disp(v,"Electron drift velocity in m/sec is : ")
