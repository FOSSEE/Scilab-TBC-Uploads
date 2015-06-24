clc;
syms t s;
y = ilaplace(1/(s+3)^2,s,t);
disp(y,"Inverse Lapalce Transform =");
