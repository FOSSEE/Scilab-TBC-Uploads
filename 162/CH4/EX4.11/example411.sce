//Example 4.11
clc;
syms s;
I=(3*s+4)/(s^2+4*s);
i=ilaplace(I);
disp(i);