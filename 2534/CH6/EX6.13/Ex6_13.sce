//Ex6_13
clc
ic = 4*10^-3
ib = 80*10^-6
disp("ib = "+string(ib)+"A")//base current
disp("ic = "+string(ic)+"A")//collector current
Ai = ic/ib
disp("Ai = ic/ib = "+string(Ai))//current gain in CE amplifier
