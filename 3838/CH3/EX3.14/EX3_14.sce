//Example 3.14
clc;
syms s;
I=1/((s+2)*(((s)^(2))+s+1));
i=ilaplace(I);
disp(i);
