//EXAMPLE 6.3
//Z-Transform 
clc;
clear;
syms n a z M N;
x = a^n;
X = nusum(x*(1/z)^n,n,M,N-1);
limit(X);
disp(X,' X = ');
