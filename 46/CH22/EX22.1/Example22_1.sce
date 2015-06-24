//Example 22.1
clc
disp("f(t)=u(t)=1")
disp("f(nT)=1")//for n>=0
syms z n
//From Eq.(22.8)
Z=symsum(z^(-n),n,0,%inf)