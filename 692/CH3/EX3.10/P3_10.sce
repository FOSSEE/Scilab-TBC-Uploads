//EXAMPLE 3.10
// DTFT of a sequence
clc;
clear;
syms a n M w;
x=a^n;
X=nusum(x*(exp(-%i*w*n)),n,0,M-1)
disp(limit(X),'The DTFT of the given sequence, X = ')


