clear;
clc;
syms s t n;
I=1/(s/2+2+20/s)
i=ilaplace(I)
disp(i,"i(t)=")