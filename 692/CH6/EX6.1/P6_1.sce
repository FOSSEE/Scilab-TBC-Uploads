//EXAMPLE 6.1
//Z-Transform of causal sequence
clc;
clear;
syms n a z;
x = a^n;
X = nusum(x*(1/z)^n,n,0,%inf);
limit(X);
disp(' X = ',X);
disp(' ROC = |z|>|a| ')