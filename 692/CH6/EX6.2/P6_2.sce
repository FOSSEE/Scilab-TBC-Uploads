
clc;
clear;
syms n a z;
x = a^n;
X = nusum(-x*(1/z)^n,n,-%inf,-1);
limit(X);
disp(' X = ',X);
disp(' ROC = |z|<|a| ')