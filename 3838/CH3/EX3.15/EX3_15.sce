//Example 3.15
clc;
syms s;
I=4/((s^(2))*(s^(2)+16));
i=ilaplace(I);
disp(i);
