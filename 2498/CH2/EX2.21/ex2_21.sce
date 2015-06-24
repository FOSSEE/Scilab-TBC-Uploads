// Exa 2.21
clc;
clear;
close;
format('v',6)
// Given data
R_F = 0.01;
Vdc = 30;// in V
R_L = 1;// in  k ohm
R_L = R_L * 10^3;// in ohm
Idc = Vdc/R_L;// in A
Idc = Idc * 10^3;// in mA
// Vdc = Vm-( (5000*Idc)/C );
Gamma = 0.01;// ripple factor
//Gamma = 2900/(C*R_L);
C = 2900/(Gamma*R_L);// in F
Vm = Vdc + ((5000*Idc*10^-3)/C);// in V
// The input voltage required 
V2 = (2*Vm)/sqrt(2);// in V 
disp(V2,"The input voltage required in V is");

//Note: The value of Vm in the book is not accurate, So the answer in the book is wrong.
