//Example 3.16.A
clc;
syms s;
I=(3*s^(2)+8*s+23)/((s+3)*(s^(2)+2*s+10));
i=ilaplace(I);
disp(i);
