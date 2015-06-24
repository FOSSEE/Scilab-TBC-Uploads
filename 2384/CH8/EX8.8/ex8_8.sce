// Exa 8.8
clc;
clear;
close;
format('v',6)
// Given data
a = 16*10^-4;// in m^2
lg = 2*10^-3;// in m
N = 1000;
phi = 4*10^-3;// in Wb
miu_r = 2000;
miu_o = 4*%pi*10^-7;
l=25;// length of magnetic in cm
w= 20;// in cm (width)
t= 4;// in cm (thickness)
li= {[w-t]*t/2+[l-t]*t/2-0.2};// in cm
li= li*10^-2;// in m
S_T= 1/(miu_o*a)*(li/miu_r+lg)
// Calculation of current with the help of flux
//phi = mmf/S_T = N*I/S_T;
I = (phi*S_T)/N;// in A
disp(I,"The current in A is");
