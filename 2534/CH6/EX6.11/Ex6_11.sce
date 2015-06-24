//Ex6_11
clc
ic = 3*10^-3
ib = 3.08*10^-3
disp("ib = "+string(ib)+"A")//base current
disp("ic = "+string(ic)+"A")//collector current
alpha = ic/ib
disp("alpha = ie/ib = ic/ib = "+string(alpha))//current gain, assuming ie = ic 
