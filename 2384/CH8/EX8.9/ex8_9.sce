// Exa 8.9
clc;
clear;
close;
format('v',7)
// Given data
N = 500;
R = 4;// in ohm
d_mean = 0.25;// in m
a = 700;// in mm^2
a = a * 10^-6;// in m
V = 6;// in V
miu_r = 550;
miu_o = 4*%pi*10^-7;
l_i = %pi*d_mean;// in m
S = l_i/(miu_o*miu_r*a);// in AT/Wb
I = V/R;// in A
// Calculation of mmf
mmf = N*I;// in AT
// total flux
phi = mmf/S;// in Wb 
phi = phi * 10^6;// in µWb
disp(phi,"The total flux in the ring in µWb is");

// Note: In the book the value of flux calculated correct in µWb but at last they print only in Wb, so the answer in the book is wrong.
