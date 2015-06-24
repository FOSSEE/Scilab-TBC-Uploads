//EXAMPLE 6.9
//Z-Transform of causal sequence
clc;
clear;
//z=%z;
syms n a z M N;
x = a^n;
X = nusum(x*(1/z)^n,n,-M,N);
limit(X);
disp(X,' X = ');