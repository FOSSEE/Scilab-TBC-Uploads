//Example 4.15
clc;
syms s;
F=(s+3)/(s*((s+1)^2)*(s+2));
f=ilaplace(F);
disp(f);