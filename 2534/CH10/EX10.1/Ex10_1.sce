//Ex10_1
clc
Av = 80//voltage gain
beta = 0.001//feedback ratio
disp("Av = "+string(Av))
disp("beta = "+string(beta))
Avf = Av/(1+beta*Av)//gain with negative feedback
disp("Avf = Av/(1+beta*Av) = "+string(Avf))
