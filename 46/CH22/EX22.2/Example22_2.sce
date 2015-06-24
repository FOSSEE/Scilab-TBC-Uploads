//Example 22.2
clc
syms T tau z n
disp("f(t)=exp(-t/tau)")
ft=exp(-n*T/tau)*z^(-n);
Z=symsum(ft,n,0,%inf)

