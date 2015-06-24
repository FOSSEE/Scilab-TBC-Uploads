//Example 4.19
clc;
syms s;
F=1/((s+1)*(s+2));
f=ilaplace(F);
disp(f);