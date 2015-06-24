clc;
clear;
mprintf('MACHINE DESIGN \n Timothy H. Wentzell, P.E. \n EXAMPLE-20.2 Page No.432\n');

//Dynamic load capacity
T=200;
n=1750;
L=T*n*60/10^6;
Pd=2400;
Ld=21;
Lc=1;
k=1/3;

Cd=Pd*(Ld/Lc)^k

mprintf('\n Dynamic load capacity required = %f lb.',Cd);

mprintf('\n Bearing 6211 meets this criterion.');
