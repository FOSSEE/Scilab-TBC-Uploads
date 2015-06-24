//Example 4.16
clc;
syms s;
F=1/((s^2)*(s+2));
f=ilaplace(F);
disp(f);