//Example 3.12
clc;
syms s;
I=2/((s)*(s+1)*(s+2));
i=ilaplace(I);
disp(i);
