//Example 3.26.B
clc;
syms s;
F=1/(s*(s+1)*(s-2));
f=ilaplace(F);
disp(f);
