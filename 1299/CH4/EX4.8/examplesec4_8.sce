//Example sec 4.8
//Jordan canonical form
clear;clc;
xdel(winsid());
A=[0 6 -5;1 0 2;3 2 4]
B=spec(A)
//Eigen vectors corresponding to eigen values of A are
p1=[2;-1;-2];
p2=[1;-0.4285;-0.7142];
p3=[1;-0.4489;-0.93877];
T=[p1 p2 p3];
A1=inv(T)*A*T
