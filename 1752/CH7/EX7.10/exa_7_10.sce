//Exa 7.10
clc;
clear;
close;
//given data
D=150*10^-3;// in m
H=400*10^-3;// in m
T1=500;// in K
epsilon=0.7;
// Formula F11=(4*H)/(4*H+D)
F11=(4*H)/(4*H+D);
sigma=5.67*10^-8;
A1=%pi*D*H;
q=sigma*A1*epsilon*T1^4*[(1-F11)/(1-F11*(1-epsilon))];
disp(q,"Heat Heat loss for cavity in W");

//Note: There is some difference between Code answer and book answer because value of F11 is wrong in the book