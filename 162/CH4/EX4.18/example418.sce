//Example 4.18
clc;
syms s;
I=(2*s+3)/((s+1)*(s+3));
i=ilaplace(I);
io=limit(i,t,0);
disp(io,'INITIAL VALUE OF i(t)');