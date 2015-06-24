//Ex6_10
clc
ic = 2.5*10^-3
ib = 50*10^-6
disp("ib = "+string(ib)+"A")//base current
disp("ic = "+string(ic)+"A")//collector current
beta = ic/ib
disp("beta = ic/ib = "+string(beta))//current gain 
