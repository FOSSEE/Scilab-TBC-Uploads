//Example 3.16.B
clc;
syms s;
I=(8*(s^(2)))/((s+2)*(s+1)^(3));
i=ilaplace(I);
disp(i);
