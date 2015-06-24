//Exa 6.3
clc;
clear;
close;
//from 7dBi gain graph the data obtained is given below :
K=1.2;//Scale constant
alfa=1.5;//Apex angle in degree
Slambda=0.15;
disp("K^n=F or n=logF/logK");
F=4;
n=log10(F)/log10(K);
n=ceil(n);
nplus1=n+1;
disp(alfa,"Apex Angle in degree : ");
disp(K,"Sale constant :");
disp(n,"No. of elements : ");