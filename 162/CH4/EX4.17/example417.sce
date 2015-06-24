//Example 4.17
clc;
syms s;
I=(s+6)/(s*(s+3));
i=ilaplace(I);
Io=limit(s*I,s,0);
disp(Io,'FINAL VALUE OF i(t)');