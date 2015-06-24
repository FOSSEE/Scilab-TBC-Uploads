//Ex6_1
clc
IB = 40*10^-6
IC = 3*10^-3
beta = IC/IB
alpha = beta/(1+beta)
disp("IB = "+string(IB)+"A")//base current 
disp("IC = "+string(IC)+"A")//collector current
disp("beta = IC/IB = "+string(beta))//current gain in CE configuration
disp("alpha = beta/(1+beta) = "+string(alpha))//current gain in CB configuration
