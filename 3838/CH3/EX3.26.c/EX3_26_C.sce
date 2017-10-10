//Example 3.26.c
clc;
syms s;
F=1/(s^(2)+s+1);
f=ilaplace(F);
disp(f);
