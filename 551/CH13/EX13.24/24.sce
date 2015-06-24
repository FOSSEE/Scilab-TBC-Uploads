clc
r=14;
B=1.4;
rho=6/100*(r-1) + 1;
y=1.4;

n_dual=1-1/r^(y-1)*[(B*rho^y-1)/((B-1)+B*y*(rho-1))]
disp("Efficiency of the cycle =")
disp(n_dual)