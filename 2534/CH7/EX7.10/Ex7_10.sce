//Ex7_10
clc
delta_IC = 0.01*10^-3
delta_beta = 5
disp("delta_IC = "+string(delta_IC)+"A")//change of collector current
disp("delta_beta = "+string(delta_beta)+"A")//change in current gain
disp("S'''' = delta_IC/delta_beta = "+string(delta_IC/delta_beta))//stability
