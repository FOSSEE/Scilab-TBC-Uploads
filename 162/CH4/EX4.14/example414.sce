//Example 4.14
clc;
syms s;
F=(s+3)/(s*(s+1)*(s+2));
f=ilaplace(F);
disp(f);