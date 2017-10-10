//Example 3.24.B
clc;
Syms s t;
x=laplace((t^(2)-exp(-4*t)+exp(-7*t)),t,s);
disp(x);
